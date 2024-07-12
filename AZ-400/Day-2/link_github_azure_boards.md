# Linking GitHub to Azure Boards

## Overview
Azure Boards can be used to plan and track work while using GitHub as the source control for software development. By integrating Azure Boards with GitHub repositories, you can link GitHub commits, pull requests, and issues to work items in Azure Boards.

#### Azure Boards App
- **Installation**: The Azure Boards App, found on the GitHub Marketplace, facilitates the integration.
- **Permissions**: Installation requires being an administrator or owner of the GitHub repository or organization.

#### Authentication
- **Methods**: Authentication to GitHub can be done via Username/Password or Personal Access Token (PAT).
- **Configuration**: Integration settings can be managed from the Azure Boards app page, including adding/removing repositories and changing configurations.

#### Supported Integration Scenarios
- **From GitHub**:
  - Integrate all or selected repositories for a GitHub account or organization.
  - Add or remove repositories involved in the integration.
  - Suspend or uninstall the integration.
- **From Azure Boards**:
  - Connect one or more GitHub repositories to an Azure Boards project.
  - Add/remove repositories from a connection within a project.
  - Allow multiple Azure Boards projects within the same Azure DevOps organization to connect to a single GitHub repository.

#### Operational Tasks Supported
- Link work items with GitHub commits, pull requests, and issues.
- Transition work items to Done or Completed state using GitHub mentions.
- Post discussion comments to GitHub from Azure Boards when linking work items.
- Display GitHub artifacts linked to work items in the Development section.
- Annotate Kanban board cards with linked GitHub artifacts.
- Add status badges of Kanban board columns to GitHub repositories.

#### Limitations
- Queries for work items with links to GitHub artifacts are not supported, though querying for work items with an External Link Count greater than 0 is possible.

#### Additional Information
- For more details, refer to guides on changing repository access, suspending/uninstalling the integration, and linking GitHub artifacts to work items.