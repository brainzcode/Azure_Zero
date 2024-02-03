# Describe the benefits of high availability and scalability in the cloud.


#### When building or deploying a cloud application, two of the biggest considerations are uptime (or availability) and the ability to handle demand (or scale).


## High availability.
- ### High Availability Overview:
  - Concerned with ensuring maximum availability of deployed resources.

  - Priority on availability despite disruptions or events.

- ### Architectural Considerations:
  - Importance of accounting for service availability guarantees.

  - Azure offers a highly available cloud environment.

- ### Service-Level Agreements (SLAs):
  - Define uptime guarantees for various Azure services.

  - SLAs indicate the commitment to service availability.



## Scalability
- #### Definition: Ability to adjust resources to meet demand.

- Scenario Example: Handling peak traffic efficiently
- ### Cost Efficiency:
  - Avoiding Overpayment: Consumption-based model ensures payment only for used resources.

  - Resource Adjustment: Reduction of resources in response to reduced demand, leading to cost reduction.

- ### Scaling Types:
  - Vertical Scaling: Adjusting capabilities of existing resources.
  - Horizontal Scaling: Adding or subtracting the number of resources


- ### Vertical scaling
  - #### Scenario Example: App development requiring more processing power.

  - #### Upward Adjustment: Adding more CPUs or RAM to the virtual machine for increased capacity.

  - #### Downward Adjustment: Reducing CPU or RAM specifications when requirements are over-specified.

- ### Horizontal scaling
  - #### Demand Response Scenario: Steep jump in demand.

  - #### Scaling Out: Adding more virtual machines or containers to meet increased demand.

  - #### Scaling In: Reducing deployed resources in response to a significant drop in demand.

  - #### Scaling Automation: Can be performed automatically or manually.