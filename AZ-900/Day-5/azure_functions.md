# Azure Functions.

- ### Concept:
  - Azure Functions is an event-driven, serverless compute option that eliminates the need for maintaining virtual machines or containers.
  
- ### Functioning:
  - Unlike traditional app setups with VMs or containers that need to be continuously running, Azure Functions are triggered by events, eliminating the need for resources to be provisioned when not in use.

- ### Benefits of Azure Functions.

  - #### Use Case:
    - Azure Functions are ideal when the focus is solely on the code running the service without worrying about the underlying platform or infrastructure.
    
  - #### Common Scenarios:
    - Functions are commonly employed when there's a need to execute tasks in response to events, timers, or messages from other Azure services, particularly when the tasks can be completed quickly, within seconds or less.

  - #### Automatic Scaling:
    - Functions scale automatically based on demand, making them a suitable choice for variable demand scenarios.

  - #### Resource Allocation:
    - Azure Functions executes code upon triggering and deallocates resources once the function completes. This ensures efficient resource utilization, and you're only charged for the CPU time consumed during function execution.
  - #### Azure Functions: Stateless vs. Stateful

    - ##### Stateless Functions:
      - By default, functions are stateless, meaning they behave as if they're restarted with each event trigger.

    - ##### Stateful Functions (Durable Functions):
      - Stateful functions, also known as Durable Functions, maintain a context to track prior activity.

  - #### Azure Functions in Serverless Computing:

    - Functions serve as a fundamental component of serverless computing, offering a scalable compute platform.
    - They are versatile, capable of executing any type of code, and adaptable to changing application requirements.
    - Developers can choose to deploy projects in non-serverless environments if necessary, providing flexibility in managing scaling, network configurations, and function isolation.



