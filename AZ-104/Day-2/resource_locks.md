# Azure Resource Locks

## What are Resource Locks?

- Prevent accidental changes or deletions of important Azure resources.
- Apply at multiple levels:
    
    - Subscriptions
    
    - Resource Groups
    
    - Individual resources
    

## Inheritance

- Locks applied at higher levels cascade down to the contained resources.

## Lock Types

- **Read-Only:** Blocks any modifications to the resource.
- **Delete:** Prevents deletion, but changes are still permitted.

**Key Point:** Resource locks provide organizations with a safety net to help avoid costly mistakes in Azure.