// Project Infrastructure as Code
// @author - Jeena Marath Premkumar
// @created on -17/1/2023
// @version V1.1
// This bicep file is the starting point of the deployment.This file has all the modules to be created for the project.

targetScope = 'subscription'

@description('Location for all resources.')
param location string = 'eastus'

@description('Environment')
param envt string = 'prod'

@description('Webserver admin user name')
param adminUsername string

@description('Webserver admin user password')
@secure()
param adminPasswordOrKey string

@description('Management Admin user name')
param mgmtUserName string

@description('Management Admin password')
@secure()
param mgmtPassword string

@description('Management server DNS name')
param mgmtDNSName string

@description('Unique Key vault name')
param keyvaultname string

// Resource group creation
resource resourceGp 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: '${envt}rg'
  location: location
}

// Key Vault certificate creation
module keyvaultcert 'certcreation.bicep' = {
  scope: resourceGp
  name: 'KeyVault'
  params: {
    location: location
   keyVaultName: keyvaultname
  }
}

// Storage account creation module
module storage 'storage.bicep' = {
  name: 'StorageAccount'
  scope:resourceGp
  params: {
    location: location
          
  }
}


// Management server creation module
module managmentservervm 'managementvm.bicep' = {
  scope: resourceGp
  name: 'ManagementServerVM'
  params: {
    location: location
    mgmtadminPassword: mgmtPassword
    mgmtadminUsername: mgmtUserName
    mgmtdnsLabelPrefix: mgmtDNSName
    storageAccountName: storage.outputs.name
 }
}


// Webserver VMSS creation module
module webservervmss 'vmssappgtway.bicep'= {
  scope: resourceGp
  name: 'WebserverVMSS'
  params: {
    location: location
    adminPasswordOrKey: adminPasswordOrKey
    adminUsername: adminUsername
    storagename: storage.outputs.name
    publicipmgmtserver: managmentservervm.outputs.pip
    identityName:keyvaultcert.outputs.identityName
    secreturl : keyvaultcert.outputs.certificateSecretIdUnversioned
    bloburl: storage.outputs.bloburl
  }
  dependsOn: [
    keyvaultcert
  ]
}
  

//VNet Peering to Webserver
module vnetpeeringtoweb 'virtualnetworkpeering.bicep' ={
  scope: resourceGp
  name: 'VnetPeeringWeb'
  params: {
    existinglocalvnet: managmentservervm.outputs.mgmtvnet
    remotevnet: webservervmss.outputs.webservervnet
    resourcegrp: resourceGp.name
  }
  dependsOn:[
    managmentservervm
    webservervmss
  ]
}

//VNet Peering to management server
module vnetpeeringtomgmt 'virtualnetworkpeering.bicep' ={
  scope: resourceGp
  name: 'VnetPeeringMgmt'
  params: {
    existinglocalvnet: webservervmss.outputs.webservervnet
    remotevnet: managmentservervm.outputs.mgmtvnet
    resourcegrp: resourceGp.name
  }
  dependsOn:[
    managmentservervm
    webservervmss
  ]
}


//Disk encryption for the management server vm
module mgmtserverdiskencryption 'diskencryptionmgmtvm.bicep'= {
  scope: resourceGp
  name: 'MgmtServerDiskEncrypt'
  params: {
    keyVaultName: keyvaultname
    vmName: managmentservervm.outputs.mgmtvmname
    location:location
  }
  dependsOn: [
    managmentservervm
    webservervmss
    keyvaultcert
  ]
}


