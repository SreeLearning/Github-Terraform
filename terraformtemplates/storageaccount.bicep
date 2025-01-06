param location string = 'australiaeast'
param storageAccountName string = 'sreestorageaccount123'

@description('SKU of the storage account')
param skuName string = 'Standard_LRS'

@description('Kind of the storage account')
param kind string = 'StorageV2'

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: skuName
  }
  kind: kind
  properties: {
    accessTier: 'Hot'
  }
}

@output('storageAccountId', 'Resource ID of the storage account')
output storageAccountId string = storageAccount.id
