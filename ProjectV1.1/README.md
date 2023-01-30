# Project Details 

[Please refer the understanding document ](/Project/Documents/Understanding%20Document.md)

[Please refer the design document ](/Project/Documents/Design%20DocumentV1.0.md)

[Please refer the decision document ](/Project/Documents/Decisions.md)

## To use the app

The application is deployed from the main.bicep file.The main.parameters.json contains all the parameters needed to deploy the main.bicep file. It has to be modified as per the need of the user before deployment.

## Prerequisites

* Azure subscription

* Visual Studio Code / Azure CLI/ Azure powershell to deploy

* Files from the Project v1.0 /Project 1.1 folder 

## Deployment

If you are using the Visual Studio Code you need to install the Bicep extension to run the bicep files and install the Azure extension to connect to your Azure account so that the resources are deployed in your Subscription. After that you just need to copy all the bicep files in to a VSC and deploy the main.bicep file along with the main.parameters.json.It will prompt you to select the Subscription ID and prompt you to choose a region to create first the resource group and subsequently all the resources will be created under that resource group. 

If you are using Azure CLI , install  the latest version of Azure CLI and install Bicep on it. You can login to your Azure Subscription to which you want to deploy your resources. You need to first create the resource group and deploy your main.bicep with the parameters. eg:
 * Create resource group if not exists

az group create --name prodrg --location eastus

* Deploy 

az deployment group create --name maindeployment --resource-group prodrg --template-file main.bicep --parameters @main.parameters.json --parameters location='eastus'

Azure powershell also follows a similar method as Azure CLI with a slight change in the commands

* Create resource group if not exists

New-AzResourceGroup -Name prodrg  -Location eastus

* Deploy 

New-AzResourceGroupDeployment -Name Deployment1  -ResourceGroupName prodrg -TemplateFile main.bicep  -TemplateParameterFile main.parameters.json -location eastus

Once deployed all the resources can be checked in the Azure Portal.