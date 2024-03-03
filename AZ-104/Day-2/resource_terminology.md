
# Key Azure Resource Management Concepts

- **Resource:** Any individual component you manage within Azure (e.g., virtual machine, database, storage account).
- **Resource Group:** A logical container to hold a collection of related resources that make up your solution.
- **Resource Provider:** A service within Azure responsible for managing specific resource types (e.g., Microsoft.Compute provides virtual machines).
- **Template:** A JSON file that defines your desired infrastructure setup, including resource dependencies. This allows for consistent, repeatable deployments.
- **Declarative Syntax:** Templates use this approach – you describe the _what_ you want, not the step-by-step _how_ to create it.

**Example: Microsoft.KeyVault**

- **Resource Provider:** Microsoft.KeyVault (responsible for managing key vaults)
- **Resource Type:** Microsoft.KeyVault/vaults (used to create a key vault)