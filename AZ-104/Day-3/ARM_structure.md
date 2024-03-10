# Infrastructure as Code (IaC)

## What is it?

* Treating your infrastructure setup like software code. You define what you need in files.
* Files are stored in a central repository alongside your application code. 

## Benefits of IaC

* **Consistency:** Reduce errors by automating the creation of environments.
* **Scalability:** Handle larger deployments more easily.
* **Deployments:** Get new infrastructure up and running faster.
* **Traceability:** Version control lets you track changes to your infrastructure. 

## ARM Templates 

* **JSON Files:** They define your Azure resources and their settings.
* **Declarative Syntax:** You focus on *what* you want, not the step-by-step creation instructions.

## Why Use ARM Templates?

* **Automation:** Integrates with IaC practices.
* **Version Control:** Templates become part of your project, trackable like code.
* **Idempotency:** Deploy the same template repeatedly, ensuring consistent results.
* **Speed + Orchestration:** Azure handles the correct order of resource creation, often doing things in parallel for faster deployment. 
* **Validation:** Azure checks your template for potential issues before starting.
* **Modularity:** Break down large deployments or nest templates for reuse.
* **CI/CD Integration:** Works with Azure Pipelines and other tools for smooth release processes. 


# ARM Template Structure

## Key Elements 

* **schema (Required):** Points to the JSON schema file defining the template's valid format. Version matters for compatibility.
* **contentVersion (Required):** Your template's version (e.g., 1.0.0.0). Useful for tracking changes.
* **apiProfile (Optional):** Groups API versions for resource types to avoid repeating them everywhere.
* **parameters (Optional):**  Values provided at deployment (files, command line, portal, etc.)
* **variables (Optional):** Simplifies repeated expressions within the template. 
* **functions (Optional):** Lets you create custom functions for use in the template.
* **resources (Required):** The core section defining what Azure resources are actually deployed.
* **outputs (Optional):**  Values returned after deployment completes.

## Deploying ARM Templates

* **Methods**
    * **Local Template:** Using Azure PowerShell or CLI on your machine.
    * **Linked Template:** Chain templates together for complex setups.
    * **CI/CD Pipeline:**  Integrate with Azure Pipelines or other tools for automated deployments.

## Adding Resources 

1. **Identify Provider & Type:**
   * Example: To add a storage account, you need the `Microsoft.Storage` provider and the `storageAccounts` type.
   * Use the Azure resource providers list for reference.
2. **Understand Properties:**
   * Each resource type has specific settings. Find details in the Azure Resource Manager template reference. 

## Template Example

This sample deploys a storage account:

```json
{
  "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
  "contentVersion": "1.0.0.1",
  "resources": [
    {
      "type": "Microsoft.Storage/storageAccounts",
      "apiVersion": "2019-06-01",
      "name": "learntemplatestorage123",
      "location": "westus",
      "sku": {
        "name": "Standard_LRS"
      },
      "kind": "StorageV2",
      "properties": {
        "supportsHttpsTrafficOnly": true
      }
    }
  ]
}
``` 
