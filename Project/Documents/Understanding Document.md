# Understanding Document
The Project v 1.0 infrastructure as code is trying to help a company who has an on-premises infrastructure to move their infrastructure to the cloud with minimum cost.
In this Project v1.0 , the application is implemented in Bicep code to automate this move .

We have got a set of requirements from the client and here are the understandings as per those requirements.


The client need 2 servers , one is a management server which is ideal if it is windows server and a web server which is a linux server.
These 2 servers are in the same region closest to the client but in 2 different availability zones. So we need 2 virtual machines , one linux server vm and one windows server vm . For this application I have chosen the region as EastUS.

These 2 vms should be placed in 2 different virtual networks with its own subnets in the 10.10.10.0/24 & 10.20.20.0/24 CIDR blocks.

The management server and webserver both need its own static public ip address. The management server is accessible to only few users. The web server is accessible to the public using the public DNS name.

We have Network Security Group Rules in place for controlling the traffic to both the servers.

The managements servers NSG rules allow inbound to port 3389  from restricted users and I have given my ip address as the only address who can access the management server.

The web servers NSG rules allow inbound to port 80 and 22. The port 80 is open for public. So when you try accessing the webserver it will show the default page of Apache.
The port 22 is accessible through SSH from only the management server. The management server public ip address will only give access to the web server.

These 2 virtual networks are peered using peering and connected. The peering is done from both sides.

We need a storage account also which will upload a file with the deployment script in it from the local machine and store it as a blob in the storage account. This file is used as a custom data during the creation of the web server, which will automatically make it into a web server. The Apache install script will be run automatically.

The same storage account is reused for the management server for boot diagnostics logs. 

The recovery service vault is used for backing up the web server. The recovery service vault requires you to create a policy for the schedule of back up. The back up has to created daily and the back up has to be retained for 7 days. 

The disks in the vms need to be encrypted for that azure encryption disks with the key vault is used. 

To get object id 

az ad signed-in-user show --query id -o tsv

az ad user list --filter "mail eq '$(az account show --query user.name -o tsv)'" --query "[0].id" -o tsv

To check the status of the disk encryption

  az vm encryption show --name "MgmtServerVM" --resource-group "prodrg" --query "substatus"

The resources which are needed to meet these requirements are:

* Microsoft.Storage/storageAccount
* Microsoft.Resources/deploymentScripts


* Microsoft.Network/virtualNetworks


* Microsoft.Network/networkInterfaces

* Microsoft.Network/networkSecurityGroups

* Microsoft.Network/publicIPAddresses


* Microsoft.Compute/virtualMachines/extensions

* Microsoft.Network/virtualNetworks/virtualNetworkPeerings

* Microsoft.RecoveryServices/vaults

* Microsoft.RecoveryServices/vaults/backupPolicies

* Microsoft.RecoveryServices/vaults/backupFabrics/protectionContainers/protectedItems 

* Microsoft.KeyVault/vaults

## Project V1.1

In V1.1 the management server is the same from the V1.0. The Storage account is from the V1.0. The peering of 2 networks and the NSG rules which were used for the management server is same as V1.0.

The NSG rule for port 443 has been added to the web server.

The web server is changed to a virtual machine scale set to accomadate the need of scaling. When more traffic comes the virtual machine scale set will scale out and scale in when traffic reduces, so the no of instances of web server changes. The webservers are accessed via an application gateway which acts a proxy and  load balances the traffic. The application gateway was used so that we can do SSL offloading. It application gateway has a feature to attach a SSL certificate. In this project Im using a Key vault to create a self signed cetificate and is accessed using a Managed Identity. The managed identity is used to retreive the secret id from the key vault and attaches it to the application gateway. 
The application gateway will redirect all the http request to https and will be forwarded to the backend( here the virtual machine scale set)


The resources needed for implementing the project v1.1 are:

* Microsoft.Compute/virtualMachineScaleSets 

* Microsoft.Insights/autoscalesettings
* Microsoft.Network/networkSecurityGroups

* Microsoft.Network/virtualNetworks 

* Microsoft.Network/publicIPAddresses

* Microsoft.Network/applicationGateways

* Microsoft.ManagedIdentity/userAssignedIdentities 
* Microsoft.KeyVault/vaults

* Microsoft.Resources/deploymentScripts 

