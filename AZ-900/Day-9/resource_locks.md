# Resource Locks

- **Purpose:**
  - Prevent accidental deletion or modification of resources.

- **Usage:**
  - Complements Azure RBAC policies to mitigate deletion risks.
  - Applicable to individual resources, resource groups, or subscriptions.

- **Inheritance:**
  - Locks are inherited, affecting all resources within the group.

- **Types:**
  - Can prevent deletion or updates, depending on lock type.

## Types of Resource Locks

- **Delete Lock:**
  - Prevents resource deletion.
  - Users can still read and modify the resource.

- **ReadOnly Lock:**
  - Prevents resource deletion or updates.
  - Users can only read the resource, similar to the Reader role.

## Managing Resource Locks

- **Azure Portal:**
  - Navigate to the Settings section of any resource's Settings pane.
  - Here, you can view, add, or delete locks.

- **PowerShell / Azure CLI / Azure Resource Manager Template:**
  - Resource locks can also be managed using PowerShell, Azure CLI, or Azure Resource Manager templates.

## Deleting or Changing Locked Resources

- **Process:**
  - To modify a locked resource, you must first remove the lock.
  - Once the lock is removed, you can proceed with the desired action.
  - Resource locks apply regardless of RBAC permissions.
  - Even owners of the resource must remove the lock before performing blocked activities.
