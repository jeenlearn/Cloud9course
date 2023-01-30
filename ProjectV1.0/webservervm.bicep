//This is the web server creation bicep file. It creates a Ubuntu machine with its required virtual networks, subnets, 
//network interface card, public ip address and the extension which runs the post deployment

@description('Username for the VM')
param adminUsername  string

@allowed([
  'sshPublicKey'
  'password'
])
@description('Type of authentication to use on the Virtual Machine. SSH key is recommended.')
param authenticationType string = 'password'


@description('SSH Key or password for the Virtual Machine. SSH key is recommended.')
@secure()
param adminPasswordOrKey string

@description('Unique DNS Name for the Public IP used to access the Virtual Machine.')
param dnsNameForPublicIP string


@allowed([
  '18.04-LTS'
  '16.04.0-LTS'
  '14.04.5-LTS'
  '20.04-LTS'
])
@description('The Ubuntu version for the VM. This will pick a fully patched image of this given Ubuntu version. Allowed values: 18.04-LTS, 16.04.0-LTS, 14.04.5-LTS.')
param ubuntuOSVersion string = '18.04-LTS'

@description('Size of the virtual machine')
param vmSize string = 'Standard_B2ms'

@description('Location for all resources.')
param location string = resourceGroup().location

@description('Blob url ')
param bloburl string

@description('Storage account name ')
param storagename string


@description('Public ip of the management server')
param publicipmgmtserver string

var imagePublisher = 'Canonical'
var imageOffer = 'UbuntuServer'
var nicNamevar = 'WebserverVMNic'
var osDiskType = 'StandardSSD_LRS'
var addressPrefix = '10.10.0.0/16'
var subnetName = 'Subnet'
var subnetPrefix = '10.10.10.0/24'
var publicIPAddressNamevar = 'WebserverPublicIP'
var publicIPAddressType = 'Static'
var vmNamevar = 'WebserverVM'
var virtualNetworkNamevar = 'WebserverVNET'
var subnetRef = resourceId('Microsoft.Network/virtualNetworks/subnets', virtualNetworkNamevar, subnetName)
var linuxConfiguration = {
  disablePasswordAuthentication: true
  ssh: {
    publicKeys: [
      {
        path: '/home/${adminUsername}/.ssh/authorized_keys'
        keyData: adminPasswordOrKey
      }
    ]
  }
}
var networkSecurityGroupNamevar = 'Webserver-NSG'
var blobfileurl = '${bloburl}/data/installapache.sh'

resource publicIPAddressName 'Microsoft.Network/publicIPAddresses@2020-05-01' = {
  name: publicIPAddressNamevar
  location: location
  properties: {
    publicIPAllocationMethod: publicIPAddressType
    
    dnsSettings: {
      domainNameLabel: dnsNameForPublicIP
    }
  }
  sku: {
    name:  'Standard'
  }
  zones: [
    '2'
  ]
}

resource networkSecurityGroupName 'Microsoft.Network/networkSecurityGroups@2020-05-01' = {
  name: networkSecurityGroupNamevar
  location: location
  properties: {
    securityRules: [
      {
        name: 'default-allow-22'
        properties: {
          priority: 100
          access: 'Allow'
          direction: 'Inbound'
          destinationPortRange: '22'
          protocol: 'Tcp'
          //sourceAddressPrefix: '*'
          sourceAddressPrefix: publicipmgmtserver
          sourcePortRange: '*'
          destinationAddressPrefix: '*'
        }
      }
      {
        name: 'default-allow-80'
        properties: {
          priority: 200
          access: 'Allow'
          direction: 'Inbound'
          destinationPortRange: '80'
          protocol: 'Tcp'
          sourceAddressPrefix: '*'
          sourcePortRange: '*'
          destinationAddressPrefix: '*'
        }
      }
      {
        name: 'default-allow-443'
        properties: {
          priority: 300
          access: 'Allow'
          direction: 'Inbound'
          destinationPortRange: '443'
          protocol: 'Tcp'
          sourceAddressPrefix: '*'
          sourcePortRange: '*'
          destinationAddressPrefix: '*'
        }
      }
    ]
  }
}

resource virtualNetworkName 'Microsoft.Network/virtualNetworks@2020-05-01' = {
  name: virtualNetworkNamevar
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        addressPrefix
      ]
    }
    subnets: [
      {
        name: subnetName
        properties: {
          addressPrefix: subnetPrefix
          networkSecurityGroup: {
            id: networkSecurityGroupName.id
          }
        }
      }
    ]
  }
}

resource nicName 'Microsoft.Network/networkInterfaces@2020-05-01' = {
  name: nicNamevar
  location: location
  properties: {
    ipConfigurations: [
      {
        name: 'ipconfig1'
        properties: {
          privateIPAllocationMethod: 'Dynamic'
          publicIPAddress: {
            id: publicIPAddressName.id
          }
          subnet: {
            id: subnetRef
          }
        }
      }
    ]
  }
  dependsOn: [
    virtualNetworkName
  ]
}

resource vmName 'Microsoft.Compute/virtualMachines@2020-06-01' = {
  name: vmNamevar
  location: location
  zones: [
    '2'
  ]
  properties: {
    hardwareProfile: {
      vmSize: vmSize
    }
    osProfile: {
      computerName: vmNamevar
      adminUsername: adminUsername
      adminPassword: adminPasswordOrKey
      linuxConfiguration: ((authenticationType == 'password') ? json('null') : linuxConfiguration)
    }
    storageProfile: {
      imageReference: {
        publisher: imagePublisher
        offer: imageOffer
        sku: ubuntuOSVersion
        version: 'latest'
      }
      osDisk: {
        name: '${vmNamevar}_OSDisk'
        caching: 'ReadWrite'
        createOption: 'FromImage'
        //diskSizeGB : 8
        managedDisk: {
          storageAccountType: osDiskType
        }
      }
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: nicName.id
        }
      ]
    }
  }
}

resource vmName_install_apache 'Microsoft.Compute/virtualMachines/extensions@2020-06-01' = {
  
 parent: vmName
 name: 'install_apache'
 location: location
 properties: {
   publisher: 'Microsoft.Azure.Extensions'
   type: 'CustomScript'
   typeHandlerVersion: '2.1'
   autoUpgradeMinorVersion: true
   settings: {
      skipDos2Unix: false
      
   }
   protectedSettings: {
     storageAccountName: storagename
     storageAccountKey :  listKeys(resourceId('Microsoft.Storage/storageAccounts', storagename), '2022-05-01').keys[0].value
     fileUris: [
       'https://prodrguniquestorage.blob.core.windows.net/data/installapache.sh'
     ]
      commandToExecute: 'sh installapache.sh'
    }
  }
 
}

output webservervnet string = virtualNetworkName.name


