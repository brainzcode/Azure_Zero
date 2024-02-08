# Azure Compuute and Networking Services.

- ## Learning Objectives.
  - Compare compute types, including container instances, virtual machines, and functions.

  - Describe virtual machine (VM) options, including VMs, Virtual Machine Scale Sets, availability sets, Azure Virtual Desktop.

  - Describe resources required for virtual machines.

  - Describe application hosting options, including Azure Web Apps, containers, and virtual machines.

  - Describe virtual networking, including the purpose of Azure Virtual Networks, Azure virtual subnets, peering, Azure DNS, VPN Gateway, and ExpressRoute.

  - Define public and private endpoints.


- ## Azure Virtual Machines (VMs)

    - **Description:** Azure Virtual Machines (VMs) offer infrastructure as a service (IaaS) by providing virtualized servers that can be utilized in various scenarios.
    - **Customization:** VMs allow complete customization of the software stack, akin to a physical computer, providing flexibility in OS, software, and hosting configurations.
    - **Ideal Use Cases:**
      - Need for full control over the operating system (OS).

      - Requirement to run custom software.

      - Desire for customized hosting configurations.
  
  - **Flexibility and Virtualization:** Azure VMs offer the benefits of virtualization without the need to purchase or manage physical hardware.

  - **Responsibilities:** While Azure VMs handle hardware management, users are still responsible for configuring, updating, and maintaining the software running on the VM.

  - **Image Provisioning:** Users can leverage preconfigured VM images to rapidly provision VMs. These images serve as templates containing OS and additional software, facilitating quick VM setup.
  
- ## Azure Virtual Machines (VMs) Management.

  - **Single VMs:** Useful for testing, development, or minor tasks.

  - **Grouped VMs:** Offer high availability, scalability, and redundancy.

  - **Azure Features:** Azure provides features like scale sets and availability sets to manage VM grouping automatically.

- ## Virtual Machine Scale Sets

  - **Purpose:** Create and manage a group of identical, load-balanced VMs.
  - **Automation:** Azure automates most tasks such as configuration, updating, and scaling.
  - **Benefits:**
    - **Central Management:** Manage, configure, and update multiple VMs easily.
    - **Auto-scaling:** VM instances can automatically increase or decrease in response to demand.
    - **Load Balancing:** Automatically deploy a load balancer for efficient resource usage.
  - **Use Cases:** Suitable for large-scale services in compute, big data, and container workloads.
- ## Virtual Machine Availability Sets

  - **Purpose:** Build a resilient, highly available environment.
  - **Features:**
    - **Staggered Updates:** Ensures VMs receive updates at different times to prevent downtime.
    - **Varied Connectivity:** Prevents loss of all VMs due to a single network or power failure.
  - **Use Cases:** Enhances availability and reliability of VMs in production environments.
  
  - ### Availability sets do this by grouping VMs in two ways: update domain and fault domain.
    - ### Update and Fault Domains in Azure VMs

      - **Update Domain:**
        - Groups VMs for simultaneous reboot during updates.

        - Ensures that only one update domain is offline at a time.

        - Each update domain has a 30-minute recovery time before the next update starts.

      - **Fault Domain:**
        - Groups VMs by common power source and network switch.

        - Default configuration splits VMs across up to three fault domains.

        - Protects against physical power or networking failures by diversifying connections.
    
        **Best of all, there’s no additional cost for configuring an availability set. You only pay for the VM instances you create.**
    - ## Common Use Cases for Virtual Machines

      - **Testing and Development:**
        - Quick creation of various OS and application configurations.
        - Easy deletion of VMs after testing is complete.
        
      - **Running Applications in the Cloud:**
        - Economic benefits compared to traditional infrastructure.
        - Ability to handle demand fluctuations by scaling VMs.
        - Pay only for resources used, minimizing costs.

      - **Extending Datacenter to the Cloud:**
        - Organizations can create a virtual network in Azure and add VMs to it.
        - Applications like SharePoint can run on Azure VMs instead of locally.
        - Deployment in Azure can be easier or less expensive compared to on-premises.

      - **Disaster Recovery:**
        - IaaS-based disaster recovery offers significant cost savings.
        - Azure VMs can be quickly deployed to run critical applications during a datacenter failure.
        - VMs can be shut down once the primary datacenter is operational again.
    - ## Move to the Cloud with VMs.
      - VMs are also an excellent choice when you move from a physical server to the cloud (also known as lift and shift). You can create an image of the physical server and host it within a VM with little or no changes. Just like a physical on-premises server, you must maintain the VM: you’re responsible for maintaining the installed OS and software.
    - ## VM Resources
        - **When you provision a VM, you’ll also have the chance to pick the resources that are associated with that VM, including:**

            - **Size** (purpose, number of processor cores, and amount of RAM)
            - **Storage disks** (hard disk drives, solid state drives, etc.)
            - **Networking** (virtual network, public IP address, and port configuration)








