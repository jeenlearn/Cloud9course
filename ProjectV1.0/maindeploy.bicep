// Project Infrastructure as Code
// @author - Jeena Marath Premkumar
// @created on - 02/12/2022
// @version V1.0
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

@description('DNS name for Webserver')
param dnsNameForPublicIP string

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


// Webserver VM creation module
module webservervm 'webservervm.bicep' = {
  scope: resourceGp
  name: 'WebserverVM'
  params: {
    location: location
    adminPasswordOrKey: adminPasswordOrKey
    adminUsername: adminUsername
    bloburl: storage.outputs.bloburl
    storagename : storage.outputs.name
    dnsNameForPublicIP: dnsNameForPublicIP
    publicipmgmtserver: managmentservervm.outputs.pip
  }
  
}


//VNet Peering to Webserver
//module vnetpeeringtoweb 'virtualnetworkpeering.bicep' ={
  //scope: resourceGp
  //name: 'VnetPeeringWeb'
 // params: {
   // existinglocalvnet: managmentservervm.outputs.mgmtvnet
  //  remotevnet: webservervm.outputs.webservervnet
   // resourcegrp: resourceGp.name
 // }
 // dependsOn:[
 //   managmentservervm
 //   webservervm
 // ]
//}

//VNet Peering to management server
//module vnetpeeringtomgmt 'virtualnetworkpeering.bicep' ={
  //scope: resourceGp
  //name: 'VnetPeeringMgmt'
  //params: {
   // existinglocalvnet: webservervm.outputs.webservervnet
   // remotevnet: managmentservervm.outputs.mgmtvnet
   // resourcegrp: resourceGp.name
 // }
 // dependsOn:[
   // managmentservervm
   // webservervm
 // ]
//}
//Backup the Webserver VM
//module backupwebservervm 'backupvm.bicep' ={
  //scope: resourceGp
  //name: 'BackupWebserverVM'
 // params: {
  //  webservervm: webservervm.name
   // location: location
 // }
 // dependsOn:[
 //   webservervm
 // ]
//}

//Creation of KeyVault
module keyvaultcreation 'keyvault.bicep'={
  scope: resourceGp
  name: 'KeyVaultForProject'
  params: {
    keyVaultName: keyvaultname
    location: location
  }
 
}

//Disk Encryption for the webserver vm
module webserverdiskencryption 'diskencryptionweb.bicep' = {
  scope: resourceGp
  name: 'WebServerDiskEncrypt'
  params: {
    keyVaultResourceGroup:resourceGp.name
    keyVaultName: keyvaultname
    vmName: webservervm.name
    location: location
 }
  dependsOn: [
   webservervm
   keyvaultcreation
  ]
}
//Disk encryption for the management server vm
//module mgmtserverdiskencryption 'diskencryptionmgmtvm.bicep'= {
 //scope: resourceGp
 // name: 'MgmtServerDiskEncrypt'
  //params: {
  //  keyVaultName: keyvaultname
   // vmName: managmentservervm.outputs.mgmtvmname
   // location:location
  //}
  //dependsOn: [
  //  managmentservervm
   // webservervm
   // keyvaultcreation
 // ]
//}


