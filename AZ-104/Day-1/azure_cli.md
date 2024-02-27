# Azure CLI

- **Purpose:** Cross-platform command-line interface to manage Azure resources.
- **Installation:** Locally on Linux, macOS, Windows, or via Azure Cloud Shell in the browser.
- **Usage:**
    - **Interactive:** Enter commands directly into a terminal/shell.
    - **Scripted:** Create and run shell scripts containing Azure CLI commands.
- **Capabilities:** Manage nearly every aspect of Azure resources (resource groups, VMs, storage, etc.)
- **Command Structure:** Commands use a `group subgroup` format (e.g., `az storage blob`)
- **Finding Commands:**
    - `az find <search term>` : Search for commands
    - `az <group> <subgroup> --help`: Get help on specific commands

**Example: Restarting a VM**

```
az vm restart -g MyResourceGroup -n MyVm 
```