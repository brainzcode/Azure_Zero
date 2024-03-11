# Making ARM Templates Flexible

## The Problem with Hardcoding

Templates with fixed values like storage account names and SKUs are not reusable for different environments.   

## Parameters to the Rescue

* **parameters Section:** This section lets you define inputs needed during deployment.
* **Values at Deployment Time:** Provide parameter values when you deploy, allowing the same template to be used in various scenarios.
* **Example:** Parameterize the storage account SKU instead of hardcoding 'Standard_LRS'.

## Parameter Properties

* **type:**  Data type of the value (string, int, bool, etc.)
* **defaultValue:**  Optional default if no value is provided.
* **allowedValues:** Restrict valid input to a specific set.
* **minValue/maxValue:** For numerical parameters.
* **minLength/maxLength:**  For strings and arrays. 
* **metadata:** Adds a description to help users understand the parameter's purpose. 

## Best Practices for ARM Template Parameters

### When to Use Parameters

* **Environment-Specific Settings:**  Tailor deployments to different needs (SKU, size, etc.)
* **Resource Naming:** Control names for easy tracking or compliance with your conventions.
* **Descriptions:** Make the purpose of each parameter clear.
* **Default Values:**  Provide sensible defaults whenever possible. 

### Security Considerations

* **Passwords & Other Sensitive Data:**  *Always* use parameters, never hardcode them in the template.  
* **secureString:** Use this type for passwords and secrets.
* **secureObject:** Use this type for passing sensitive JSON objects.

**Why Security Matters:** Parameters of the right type prevent sensitive info from being viewable after deployment. 


### Use parameters in an ARM template

In the parameters section of the ARM template, specify the parameters that you can input when you deploy the resources. You're limited to 256 parameters in a template.

Here's an example of a template file with a parameter for the storage-account SKU defined in the template's `parameters` section. You can provide a default for the parameter to be used if no value is specified at execution.

JSONCopy

```
"parameters": {
  "storageAccountType": {
    "type": "string",
    "defaultValue": "Standard_LRS",
    "allowedValues": [
      "Standard_LRS",
      "Standard_GRS",
      "Standard_ZRS",
      "Premium_LRS"
    ],
    "metadata": {
      "description": "Storage Account type"
    }
  }
}
```

Then, use the parameter in the resource definition. The syntax is `[parameters('name of the parameter')]`. You'll use the `parameters` function. You'll learn more about functions in the next module.

JSONCopy

```
"resources": [
  {
    "type": "Microsoft.Storage/storageAccounts",
    "apiVersion": "2019-04-01",
    "name": "learntemplatestorage123",
    "location": "[resourceGroup().location]",
    "sku": {
      "name": "[parameters('storageAccountType')]"
    },
    "kind": "StorageV2",
    "properties": {
      "supportsHttpsTrafficOnly": true
    }
  }
]
```

When you deploy the template, you can provide a value for the parameter. Notice the last line in the following command:

- [Azure CLI](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/4-add-flexibility-arm-template?tabs=azure-powershell#tabpanel_1_azure-cli)
- [PowerShell](https://learn.microsoft.com/en-us/training/modules/create-azure-resource-manager-template-vs-code/4-add-flexibility-arm-template?tabs=azure-powershell#tabpanel_1_azure-powershell)

Azure PowerShellCopy

```
$templateFile="azuredeploy.json"
New-AzResourceGroupDeployment `
  -Name testdeployment1 `
  -TemplateFile $templateFile `
  -storageAccountType Standard_LRS
```

## ARM template outputs

In your ARM template's outputs section, you can specify values that will be returned after a successful deployment. Here are the elements that make up the outputs section.

JSONCopy

```
"outputs": {
  "<output-name>": {
    "condition": "<boolean-value-whether-to-output-value>",
    "type": "<type-of-output-value>",
    "value": "<output-value-expression>",
    "copy": {
      "count": <number-of-iterations>,
      "input": <values-for-the-variable>
    }
  }
}
```

Expand table

|Element|Description|
|---|---|
|**output-name**|Must be a valid JavaScript identifier.|
|**condition**|(Optional) A Boolean value that indicates whether this output value is returned. When true, the value is included in the output for the deployment. When false, the output value is skipped for this deployment. When not specified, the default value is true.|
|**type**|The type of the output value.|
|**value**|(Optional) A template language expression that's evaluated and returned as an output value.|
|**copy**|(Optional) Copy is used to return more than one value for an output.|

### Use outputs in an ARM template

Here's an example to output the storage account's endpoints:

JSONCopy

```
"outputs": {
  "storageEndpoint": {
    "type": "object",
    "value": "[reference('learntemplatestorage123').primaryEndpoints]"
  }
}
```

Notice the `reference` part of the expression. This function gets the runtime state of the storage account.

## Deploy an ARM template again

Recall that ARM templates are _idempotent_, which means you can deploy the template to the same environment again, and if nothing was changed in the template, nothing will change in the environment. If a change was made to the template (for example, you changed a parameter value), only that change will be deployed. Your template can contain all of the resources you need for your Azure solution, and you can safely execute a template again. Resources will be created only if they didn't already exist and updated only if there's a change.
