# Exercise - Create and deploy an Azure Resource Manager template



## PowerShellAzure CLI

 Note

The first time you activate a sandbox and accept the terms, your Microsoft account is associated with a new Azure directory named Microsoft Learn Sandbox. You're also added to a special subscription named Concierge Subscription.

In this exercise, you'll create an Azure Resource Manager template (ARM template), deploy it to Azure, and then update that ARM template to add parameters and outputs.

This exercise uses [Azure Resource Manager Tools for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=msazurermtools.azurerm-vscode-tools). Be sure to install this extension in Visual Studio Code before starting the exercise.

## Create an ARM template

1. Open Visual Studio Code and create a new file called _azuredeploy.json_.
    
2. The Visual Studio Code ARM template extension comes configured with snippets to help you develop templates. Let's start by adding a blank template. On the first line of the file, enter _arm_.
    
3. Visual Studio Code automatically displays several potential choices that start with **arm!**. Select the **Azure Resource Manager (ARM) template**. Visual Studio Code automatically processes the schemas and languages for your template.
    
    ![Visual Studio Code azuredeploy.json file showing the snippet choices for Azure Resource Manager templates.](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/media/3-arm-snippet.png)
    
    Your file now looks like this:
    
    JSONCopy
    
    ```
    {
      "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
      "contentVersion": "1.0.0.0",
      "parameters": {},
      "functions": [],
      "variables": {},
      "resources": [],
      "outputs": {}
    }
    ```
    
    Notice that this file has all of the sections of an ARM template that we described in the previous unit.
    
4. Save the changes to the file by pressing Ctrl+S.
    

## Deploy the ARM template to Azure

To deploy this template to Azure, you need to sign in to your Azure account from the Visual Studio Code terminal. Be sure you have installed Azure PowerShell Tools from the Visual Studio Code Extensions, and sign in to the same account that activated the sandbox.

1. In the command bar, select **Terminal > New Terminal** to open a PowerShell window.
    
2. If the command bar of the terminal window shows **PowerShell**, you have the right shell from which to work, and you can skip to the next section.
    
    ![Screenshot of the Visual Studio Code terminal window with pwsh terminal selected.](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/media/3-pwsh.png)
    
    1. If not, select the down arrow and in the dropdown list select PowerShell. If that option is missing, then select **Select Default Profile**.
        
    2. In the input field, scroll down and select **PowerShell**.
        
        ![Screenshot of the Visual Studio Code terminal window showing the select shell drop-down.](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/media/3-select-shell.png)
        
    3. Select **Terminal > New Terminal** to open a PowerShell terminal window.
        

### Sign in to Azure by using Azure PowerShell

1. From the terminal in Visual Studio Code, run the following command to sign in to Azure. A browser opens so you can sign in to your account.
    
    Azure PowerShellCopy
    
    ```
    Connect-AzAccount
    ```
    
     Tip
    
    The [Az PowerShell module](https://learn.microsoft.com/en-us/powershell/azure/new-azureps-module-az) is the replacement of AzureRM and is the recommended version to use for interacting with Azure.
    
2. Sign in using the account you used to activate the sandbox. After you've signed in, Visual Studio Code lists the subscriptions associated with your account in the terminal window. If you activated the sandbox, you see a code block that contains `"name": "Concierge Subscription"`. This is the subscription to use for the rest of the exercise.
    

### Set the default subscription for all PowerShell commands in this session

1. Run the following command to obtain your subscription(s) and their ID(s). The subscription ID is the second column. Look for _Concierge Subscription_, and copy the value in the second column. It looks something like _cf49fbbc-217c-4eb6-9eb5-a6a6c68295a0_:
    
    Azure PowerShellCopy
    
    ```
    Get-AzSubscription
    ```
    
2. Run the following command, replacing _{Your subscription ID}_ with the one you copied in the previous step to change your active subscription to the Concierge Subscription.
    
    Azure PowerShellCopy
    
    ```
    $context = Get-AzSubscription -SubscriptionId {Your subscription ID}
    Set-AzContext $context
    ```
    
3. Run the following command to let the default resource group be the resource group created for you in the sandbox environment. This action lets you omit that parameter from the rest of the Azure PowerShell commands in this exercise.
    
    Azure PowerShellCopy
    
    ```
    Set-AzDefault -ResourceGroupName learn-29b768b2-24f8-43f7-95e3-00a8791d7401
    ```
    

### Deploy the template to Azure

Deploy the template to Azure by running the following commands. The ARM template doesn't have any resources yet, so you won't see resources created.

Azure PowerShellCopy

```
$templateFile="azuredeploy.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="blanktemplate-"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile
```

The top section of the preceding code sets Azure PowerShell variables, which includes the path to the deployment file and the name of the deployment. Then, the `New-AzResourceGroupDeployment` command deploys the template to Azure. Notice that the deployment name is `blanktemplate` with the date as a suffix.

When you've deployed your ARM template to Azure, go to the [Azure portal](https://portal.azure.com/) and make sure you're in the sandbox subscription. To do that, select your avatar in the upper-right corner of the page. Select **Switch directory**. In the list, choose the **Microsoft Learn Sandbox** directory.

1. In the resource menu, select **Resource groups**.
    
2. Select the _learn-29b768b2-24f8-43f7-95e3-00a8791d7401_ resource group.
    
3. On the **Overview** pane, you see that one deployment succeeded.
    
    ![Azure portal interface for the resource group overview with the deployments section showing that one succeeded.](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/media/3-deployment-succeeded.png)
    
4. Select **1 Succeeded** to see the details of the deployment.
    
    ![Azure portal interface for the deployments with the one deployment listed and a succeeded status.](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/media/3-blanktemplate.png)
    
5. Select `blanktemplate` to see what resources were deployed. In this case, it will be empty because you didn't specify any resources in the template yet.
    
    ![Azure portal interface for the specific deployment with no resources listed.](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/media/3-no-results.png)
    
6. Leave the page open in your browser. You'll check on deployments again.
    

## Add a resource to the ARM template

In the previous task, you learned how to create a blank template and deploy it. Now, you're ready to deploy an actual resource. In this task, you'll add an Azure storage account resource to the ARM template by using a snippet from the Azure Resource Manager Tools extension for Visual Studio Code.

1. In the _azuredeploy.json_ file in Visual Studio Code, place your cursor inside the brackets in the resources block `"resources":[],`.
    
2. Enter _storage_ inside the brackets. A list of related snippets appears. Select **arm-storage**.
    
    ![Visual Studio Code arm-storage snippet shown under the typed word storage.](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/media/3-arm-storage.png)
    
    Your file will look like this:
    
    JSONCopy
    
    ```
    {
      "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
      "contentVersion": "1.0.0.0",
      "parameters": {},
      "functions": [],
      "variables": {},
      "resources": [
        {
          "name": "storageaccount1",
          "type": "Microsoft.Storage/storageAccounts",
          "apiVersion": "2019-06-01",
          "tags": {
            "displayName": "storageaccount1"
          },
          "location": "[resourceGroup().location]",
          "kind": "StorageV2",
          "sku": {
            "name": "Premium_LRS",
            "tier": "Premium"
          }
        }
      ],
      "outputs": {}
    }
    ```
    
    Values that you should edit are highlighted in the new section of your file, and you can navigate them by pressing the Tab key.
    
    Notice the `tags` and `location` attributes are filled in. The `location` attribute uses a function to set the location of the resource to the location of the resource group. You'll learn about tags and functions in the next module.
    
3. Change the values of the resource _name_ and _displayName_ to something unique (for example, **learnexercise12321**). This name must be unique across all of Azure, so choose something unique to you.
    
4. Change the value of the sku _name_ from **Premium_LRS** to **Standard_LRS**. Change the value of _tier_ to **Standard**. Notice that Visual Studio Code gives you the proper choices for your attribute values in IntelliSense. Delete the default value including the quotation marks, and enter quotation marks to see this work.
    
    ![Screenshot of Visual Studio Code showing the IntelliSense choices for the name attribute of the storage SKU.](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/media/3-vs-code-intellisense.png)
    
5. The resource location is set to the resource group location where it will be deployed. Leave the default here.
    
6. Save the file.
    

### Deploy the updated ARM template

Here, you'll change the name of the deployment to better reflect what this deployment does.

Run the following Azure PowerShell commands in the terminal. This snippet is the same code you used previously, but the name of the deployment is changed.

Azure PowerShellCopy

```
$templateFile="azuredeploy.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="addstorage-"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile
```

### Check your deployment

1. When the deployment finishes, go back to the Azure portal in your browser. Go to your resource group, and you'll see that there are now **2 Succeeded** deployments. Select this link.
    
    Notice that both deployments are in the list.
    
    ![Screenshot of the Azure portal interface for the deployments with the two deployments listed and succeeded statuses.](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/media/3-addstorage-deployment.png)
    
2. Select **addstorage**.
    
    ![Screenshot of the Azure portal interface for the specific deployment with one resource listed.](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/media/3-show-resource-deployed.png)
    

Notice that the storage account has been deployed.

---


# Exercise - Create and deploy an Azure Resource Manager template

## Azure CLI

 Note

The first time you activate a sandbox and accept the terms, your Microsoft account is associated with a new Azure directory named Microsoft Learn Sandbox. You're also added to a special subscription named Concierge Subscription.

In this exercise, you'll create an Azure Resource Manager template (ARM template), deploy it to Azure, and then update that ARM template to add parameters and outputs.

This exercise uses [Azure Resource Manager Tools for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=msazurermtools.azurerm-vscode-tools). Be sure to install this extension in Visual Studio Code before starting the exercise.

## Create an ARM template

1. Open Visual Studio Code and create a new file called _azuredeploy.json_.
    
2. The Visual Studio Code ARM template extension comes configured with snippets to help you develop templates. Let's start by adding a blank template. On the first line of the file, enter _arm_.
    
3. Visual Studio Code automatically displays several potential choices that start with **arm!**. Select the **Azure Resource Manager (ARM) template**. Visual Studio Code automatically processes the schemas and languages for your template.
    
    ![Visual Studio Code azuredeploy.json file showing the snippet choices for Azure Resource Manager templates.](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/media/3-arm-snippet.png)
    
    Your file now looks like this:
    
    JSONCopy
    
    ```
    {
      "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
      "contentVersion": "1.0.0.0",
      "parameters": {},
      "functions": [],
      "variables": {},
      "resources": [],
      "outputs": {}
    }
    ```
    
    Notice that this file has all of the sections of an ARM template that we described in the previous unit.
    
4. Save the changes to the file by pressing Ctrl+S.
    

## Deploy the ARM template to Azure

To deploy this template to Azure, you need to sign in to your Azure account from the Visual Studio Code terminal. Be sure you have the [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) tools installed, and sign in with the same account you used to activate the sandbox.

1. Select **Terminal > New Terminal** to open a terminal window.
    
2. If the command bar of the terminal window says **bash**, you have the right shell to work from and you can skip to the next section.
    
3. If not, select the drop-down and choose **Select Default Profile**.
    
    ![Screenshot of the Visual Studio Code terminal window with bash in the drop-down.](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/media/3-bash.png)
    
4. Select **Git Bash**.
    
    ![Screenshot of the Visual Studio Code terminal window showing the select shell drop-down.](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/media/3-select-shell.png)
    
5. Select **Terminal > New Terminal** to open a bash shell terminal window.
    

### Sign in to Azure

1. In the terminal window, run this command to sign in to Azure.
    
    Azure CLICopy
    
    ```
    az login
    ```
    
2. A browser opens so that you can sign in to your account. After you've signed in, a list of the subscriptions associated with this account displays in the terminal. If you activated the sandbox, you should see one called _Concierge Subscription_. Use this one for the rest of the exercise.
    
3. In the bash shell, run the following command to set the default subscription for all of the Azure CLI commands you run in this session.
    
    Azure CLICopy
    
    ```
    az account set --subscription "Concierge Subscription"
    ```
    
    If you've used more than one sandbox recently, more than one _Concierge Subscription_ might be listed. If so, use the next two steps to identify and set the default subscription.
    
    1. Run the following command to obtain the _Concierge Subscription_ IDs.
    
    Azure CLICopy
    
    ```
     az account list \
       --refresh \
       --query "[?contains(name, 'Concierge Subscription')].id" \
       --output table
    ```
    
    1. Set the default subscription by running the following command, replacing _{your subscription ID}_ with the latest Concierge Subscription ID.
    
    Azure CLICopy
    
    ```
    az account set --subscription {your subscription ID}
    ```
    

### Set the default resource group

By setting the default resource group to the one created when you activated the sandbox, you can omit that parameter from the Azure CLI commands in this exercise. To set the resource group, run the following command.

Azure CLICopy

```
az configure --defaults group=[sandbox resource group name]
```

### Deploy the template to Azure

Run the following commands to deploy the ARM template to Azure. The ARM template doesn't have any resources yet, so you won't see any resources created. You should get a successful deployment.

Azure CLICopy

```
templateFile="azuredeploy.json"
today=$(date +"%d-%b-%Y")
DeploymentName="blanktemplate-"$today

az deployment group create \
 --name $DeploymentName \
 --template-file $templateFile
```

The top section of the preceding code sets the Azure CLI variables, which include the path to the template file to deploy and the name of the deployment. The bottom section, `az deployment group create`, deploys the template to Azure. Notice that the deployment name is `blanktemplate` with the date as a suffix.

You should see `Running...` in the terminal.

When you've deployed your ARM template to Azure, go to the [Azure portal](https://portal.azure.com/) and make sure you're in the sandbox subscription. To do that, select your avatar in the upper-right corner of the page. Select **Switch directory**. In the list, choose the **Microsoft Learn Sandbox** directory.

1. In the resource menu, select **Resource groups**.
    
2. Select the _learn-29b768b2-24f8-43f7-95e3-00a8791d7401_ resource group.
    
3. On the **Overview** pane, you see that one deployment succeeded.
    
    ![Azure portal interface for the resource group overview with the deployments section showing that one succeeded.](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/media/3-deployment-succeeded.png)
    
4. Select **1 Succeeded** to see the details of the deployment.
    
    ![Azure portal interface for the deployments with the one deployment listed and a succeeded status.](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/media/3-blanktemplate.png)
    
5. Select `blanktemplate` to see what resources were deployed. In this case, it will be empty because you didn't specify any resources in the template yet.
    
    ![Azure portal interface for the specific deployment with no resources listed.](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/media/3-no-results.png)
    
6. Leave the page open in your browser. You'll check on deployments again.
    

## Add a resource to the ARM template

In the previous task, you learned how to create a blank template and deploy it. Now, you're ready to deploy an actual resource. In this task, you'll add an Azure storage account resource to the ARM template by using a snippet from the Azure Resource Manager Tools extension for Visual Studio Code.

1. In the _azuredeploy.json_ file in Visual Studio Code, place your cursor inside the brackets in the resources block `"resources":[],`.
    
2. Enter _storage_ inside the brackets. A list of related snippets appears. Select **arm-storage**.
    
    ![Visual Studio Code arm-storage snippet shown under the typed word storage.](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/media/3-arm-storage.png)
    
    Your file will look like this:
    
    JSONCopy
    
    ```
    {
      "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
      "contentVersion": "1.0.0.0",
      "parameters": {},
      "functions": [],
      "variables": {},
      "resources": [
        {
          "name": "storageaccount1",
          "type": "Microsoft.Storage/storageAccounts",
          "apiVersion": "2019-06-01",
          "tags": {
            "displayName": "storageaccount1"
          },
          "location": "[resourceGroup().location]",
          "kind": "StorageV2",
          "sku": {
            "name": "Premium_LRS",
            "tier": "Premium"
          }
        }
      ],
      "outputs": {}
    }
    ```
    
    Values that you should edit are highlighted in the new section of your file, and you can navigate them by pressing the Tab key.
    
    Notice the `tags` and `location` attributes are filled in. The `location` attribute uses a function to set the location of the resource to the location of the resource group. You'll learn about tags and functions in the next module.
    
3. Change the values of the resource _name_ and _displayName_ to something unique (for example, **learnexercise12321**). This name must be unique across all of Azure, so choose something unique to you.
    
4. Change the value of the sku _name_ from **Premium_LRS** to **Standard_LRS**. Change the value of _tier_ to **Standard**. Notice that Visual Studio Code gives you the proper choices for your attribute values in IntelliSense. Delete the default value including the quotation marks, and enter quotation marks to see this work.
    
    ![Screenshot of Visual Studio Code showing the IntelliSense choices for the name attribute of the storage SKU.](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/media/3-vs-code-intellisense.png)
    
5. The resource location is set to the resource group location where it will be deployed. Leave the default here.
    
6. Save the file.
    

### Deploy the updated ARM template

Here, you'll change the name of the deployment to better reflect what this deployment does.

Run the following Azure CLI commands in the terminal. This snippet is the same code you used previously, but the name of the deployment is changed.

Azure CLICopy

```
templateFile="azuredeploy.json"
today=$(date +"%d-%b-%Y")
DeploymentName="addstorage-"$today

az deployment group create \
  --name $DeploymentName \
  --template-file $templateFile
```

### Check your deployment

1. When the deployment finishes, go back to the Azure portal in your browser. Go to your resource group, and you'll see that there are now **2 Succeeded** deployments. Select this link.
    
    Notice that both deployments are in the list.
    
    ![Screenshot of the Azure portal interface for the deployments with the two deployments listed and succeeded statuses.](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/media/3-addstorage-deployment.png)
    
2. Select **addstorage**.
    
    ![Screenshot of the Azure portal interface for the specific deployment with one resource listed.](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/media/3-show-resource-deployed.png)
    

Notice that the storage account has been deployed.

---