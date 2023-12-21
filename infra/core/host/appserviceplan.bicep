metadata description = 'Creates an Azure App Service plan.'
param name string
param location string = resourceGroup().location
param tags object = {
  owner: 'adamjanoski@servicetitan.com'
  createdBy: 'adamjanoski@servicetitan.com'
  squad: 'contact center pro'
}

param sku object

resource appServicePlan 'Microsoft.Web/serverfarms@2020-06-01' = {
  name: name
  location: location
  tags: tags
  sku: sku
}

output id string = appServicePlan.id
output name string = appServicePlan.name
