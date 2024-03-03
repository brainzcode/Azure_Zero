# What are Resource Groups?

- Logical containers to organize your Azure resources.
- Resources within a group typically share the same lifecycle (you deploy/delete them together).

## Rules:

- A resource can belong to only _one_ resource group.
- Resource groups can't be renamed.
- They can hold different resource types and resources from different regions.

## Considerations When Creating Resource Groups:

- **Lifecycle:** Group resources that get deployed/updated/deleted at the same time.
- **Access Control:** Use resource groups to manage permissions.
- **Cross-Group Interaction:** Resources can interact with those in other resource groups (e.g., a web app connecting to a database in a different group).

## The Importance of Resource Group Location

- The location you choose is where the _metadata_ about your resources is stored.
- This might be important for compliance and data sovereignty regulations.