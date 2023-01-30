@description('Webserver VM name')
param webservervm string

@description('Location for all resources.')
param location string = resourceGroup().location

@description('Vault name')
param vaultName string = 'WebVMRecoveryVault'


@description('Storage replication type for Recovery Services vault')
@allowed([
  'LocallyRedundant'
  'GeoRedundant'
  'ReadAccessGeoZoneRedundant'
  'ZoneRedundant'
])
param storageType string = 'LocallyRedundant'

@description('Backup policy to be used to backup VMs. Backup Policy defines the schedule of the backup and how long to retain backup copies. By default every vault comes with a \'DefaultPolicy\' which canbe used here.')
param policyName string = 'RecoveryDailyPolicy'


var backupFabric = 'Azure'
var protectionContainer = 'iaasvmcontainer;iaasvmcontainerv2;${resourceGroup().name};${webservervm}'
var protectedItem = 'vm;iaasvmcontainerv2;${resourceGroup().name};${webservervm}'

@description('Referring to the existing webserver vm')
resource webserver 'Microsoft.Compute/virtualMachines@2022-08-01' existing = {
  name: webservervm
}

//create recovery service vault resource
resource recoveryServicesVault 'Microsoft.RecoveryServices/vaults@2022-09-10' = {
  name: vaultName
  location: location
  sku: {
    name: 'RS0'
    tier: 'Standard'
  }
  properties: {
  }

}

// create backup policy 
resource backupPolicy 'Microsoft.RecoveryServices/vaults/backupPolicies@2022-03-01' = {
  parent: recoveryServicesVault
  name: policyName
  location: location
  properties: {
    backupManagementType: 'AzureIaasVM'
    instantRpRetentionRangeInDays: 5
    protectedItemsCount: 0
    schedulePolicy: {
      schedulePolicyType: 'SimpleSchedulePolicy'
      scheduleRunFrequency: 'Daily'
      
      scheduleRunTimes: [
        '21:00'
      ]
      //scheduleWeeklyFrequency: 0
    }
    retentionPolicy: {
      retentionPolicyType: 'LongTermRetentionPolicy'
      dailySchedule: {
        retentionTimes: [
          '21:00'
        ]
        retentionDuration: {
          count: 7
          durationType:  'Days'
        }
      }
    }
    timeZone: 'W. Europe Standard Time' 
  }
} 
resource vaultName_backupFabric_protectionContainer_protectedItem 'Microsoft.RecoveryServices/vaults/backupFabrics/protectionContainers/protectedItems@2022-03-01'= {
  name: '${vaultName}/${backupFabric}/${protectionContainer}/${protectedItem}'
  properties: {
    protectedItemType: 'Microsoft.Compute/virtualMachines'
    policyId: backupPolicy.id
    sourceResourceId: webserver.id
     
  }

} 
