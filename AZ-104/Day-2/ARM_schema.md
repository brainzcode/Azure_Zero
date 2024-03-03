# Explore the Azure Resource Manager template schema

Azure Resource Manager templates are written in JSON, which allows you to express data stored as an object (such as a virtual machine) in text. A JSON document is essentially a collection of key-value pairs. Each key is a string, whose value can be:

- A string
- A number
- A Boolean expression
- A list of values
- An object (which is a collection of other key-value pairs)

A Resource Manager template can contain sections that are expressed using JSON notation, but aren't related to the JSON language itself:

```
{
    "$schema": "http://schema.management.​azure.com/schemas/2019-04-01/deploymentTemplate.json#",​
    "contentVersion": "",​
    "parameters": {},​
    "variables": {},​
    "functions": [],​
    "resources": [],​
    "outputs": {}​
}

```

|Element name|Required|Description|
|---|---|---|
|$schema|Yes|Location of the JSON schema file that describes the version of the template language. Use the URL shown in the preceding example.|
|contentVersion|Yes|Version of the template (such as 1.0.0.0). You can provide any value for this element. Use this value to document significant changes in your template. This value can be used to make sure that the right template is being used.|
|parameters|No|Values that are provided when deployment is executed to customize resource deployment.|
|variables|No|Values that are used as JSON fragments in the template to simplify template language expressions.|
|functions|No|User-defined functions that are available within the template.|
|resources|Yes|Resource types that are deployed or updated in a resource group.|
|outputs|No|Values that are returned after deployment.|
