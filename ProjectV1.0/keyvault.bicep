@description('Specifies the name of the key vault.')
param keyVaultName string

@description('Specifies the Azure location where the key vault should be created.')
param location string = resourceGroup().location

@description('Specifies whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault.')
param enabledForDeployment bool = true

@description('Specifies whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys.')
param enabledForDiskEncryption bool = true

@description('Specifies whether Azure Resource Manager is permitted to retrieve secrets from the key vault.')
param enabledForTemplateDeployment bool = true

@description('Specifies the Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. Get it by using Get-AzSubscription cmdlet.')
param tenantId string = subscription().tenantId



@description('Specifies whether the key vault is a standard vault or a premium vault.')
@allowed([
  'standard'
  'premium'
])
param skuName string = 'standard'

resource kv 'Microsoft.KeyVault/vaults@2022-07-01' = {
  name: keyVaultName
  location: location
  properties: {
    enabledForDeployment: enabledForDeployment
    enabledForDiskEncryption: enabledForDiskEncryption
    enabledForTemplateDeployment: enabledForTemplateDeployment
    tenantId: tenantId
    accessPolicies:[
      {
        objectId: '18eb5d5e-361a-453e-8bf3-74050bb3be6f'
        permissions: {
          keys: [
            'all'
          ]
          secrets: [
            'all'
          ]
        }
        tenantId: tenantId
      }
    ]
    sku: {
      name: skuName
      family: 'A'
    }
    networkAcls: {
      defaultAction: 'Allow'
      bypass: 'AzureServices'
    }
  }
}

output keyvaultname string = keyVaultName
//output keyvaultid string = kv.id
