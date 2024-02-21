# Purpose of Tags

- **Description:**
  - Tags provide metadata about resources for organization and management purposes.
  - **Useful for:**
    - **Resource management:** Locate and act on resources associated with specific workloads, environments, etc.
    - **Cost management and optimization:** Group resources for cost reporting, allocation, budget tracking, and forecasting.
    - **Operations management:** Group resources based on criticality for formulating SLAs.
    - **Security:** Classify data by security level (e.g., public or confidential).
    - **Governance and regulatory compliance:** Identify resources aligning with governance or compliance requirements (e.g., ISO 27001).
    - **Workload optimization and automation:** Visualize resources in complex deployments and automate tasks.

## Managing Resource Tags

- **Methods:**
  - Tags can be managed through:
    - Windows PowerShell
    - Azure CLI
    - Azure Resource Manager templates
    - REST API
    - Azure portal

- **Enforcing Tagging Rules:**
  - Azure Policy can enforce tagging rules and conventions.
  - Examples include requiring certain tags on new resources or reapplying removed tags.
  - Tags are not inherited across different levels (e.g., resource, resource group, subscription), allowing for custom tagging schemas.

### An example tagging structure

A resource tag consists of a name and a value. You can assign one or more tags to each Azure resource.


|**Name**|**Value**|
|---|---|
|AppName|The name of the application that the resource is part of.|
|CostCenter|The internal cost center code.|
|Owner|The name of the business owner who's responsible for the resource.|
|Environment|An environment name, such as "Prod," "Dev," or "Test."|
|Impact|How important the resource is to business operations, such as "Mission-critical," "High-impact," or "Low-impact."|

Keep in mind that you don't need to enforce that a specific tag is present on all of your resources. For example, you might decide that only mission-critical resources have the Impact tag. All non-tagged resources would then not be considered as mission-critical.