# Azure data migration options
- **Azure supports both real-time migration of infrastructure, applications, and data using Azure Migrate as well as asynchronous migration of data using Azure Data Box.**

## Azure Migrate

- ### Azure Migrate is a service that helps you migrate from an on-premises environment to the cloud. Azure Migrate functions as a hub to help you manage the assessment and migration of your on-premises datacenter to Azure. It provides the following:

  - **Unified migration platform**: 
    - A single portal to start, run, and track your migration to Azure.
  - **Range of tools**: 
    - A range of tools for assessment and migration. Azure Migrate tools include.
      - Azure Migrate: Discovery and assessment and 
      - Azure Migrate: Server Migration. 
      - Azure Migrate also integrates with other Azure services and tools, and with independent software vendor (ISV) offerings.
  - **Assessment and migration**: In the Azure Migrate hub, you can assess and migrate your on-premises infrastructure to Azure.


### Integrated tools

- #### In addition to working with tools from ISVs, the Azure Migrate hub also includes the following tools to help with migration:

  - **Azure Migrate: Discovery and assessment**. 
    - Discover and assess on-premises servers running on VMware, Hyper-V, and physical servers in preparation for migration to Azure.
  - **Azure Migrate: Server Migration**. 
    - Migrate VMware VMs, Hyper-V VMs, physical servers, other virtualized servers, and public cloud VMs to Azure.
  
  - **Data Migration Assistant**. 
    - Data Migration Assistant is a stand-alone tool to assess SQL Servers. It helps pinpoint potential problems blocking migration. It identifies unsupported features, new features that can benefit you after migration, and the right path for database migration.
  - **Azure Database Migration Service**. 
      - Migrate on-premises databases to Azure VMs running SQL Server, Azure SQL Database, or SQL Managed Instances.
  - **Azure App Service migration assistant**. 
    - Azure App Service migration assistant is a standalone tool to assess on-premises websites for migration to Azure App Service. Use Migration Assistant to migrate .NET and PHP web apps to Azure.
  - **Azure Data Box**. 
    - Use Azure Data Box products to move large amounts of offline data to Azure.


## Azure Data Box:

- Azure Data Box is a physical migration service facilitating quick, cost-effective, and secure transfer of large data volumes.
- It involves a proprietary storage device, Data Box, with a maximum capacity of 80 terabytes, shipped to and from the datacenter via a regional carrier.
- Data transfer is initiated via the Azure portal, where the device can be ordered for importing or exporting data from Azure.
- Upon receiving the Data Box, setup is simple using the local web UI, and it can be connected to the network for data transfer.
- After data transfer completion, the Data Box is returned, and if data is transferred into Azure, it's automatically uploaded once received.
- The entire process is monitored and managed through the Azure portal, ensuring end-to-end tracking.

    - ### Use cases

        - **Data Box is ideally suited to transfer data sizes larger than 40 TBs in scenarios with no to limited network connectivity. The data movement can be one-time, periodic, or an initial bulk data transfer followed by periodic transfers.**

        - **Here are the various scenarios where Data Box can be used to import data to Azure:**

          - **Onetime migration:** 
            - When a large amount of on-premises data is moved to Azure.

          - **Moving a media library** from offline tapes into Azure to create an online media library.
          - **Migrating your VM farm**, SQL server, and applications to Azure.
          - **Moving historical data** to Azure for in-depth analysis and reporting using HDInsight.
          - **Initial bulk transfer:** 
            - when an initial bulk transfer is done using Data Box (seed) followed by incremental transfers over the network.
          - **Periodic uploads:** 
            - when large amount of data is generated periodically and needs to be moved to Azure.

        - **Here are the various scenarios where Data Box can be used to export data from Azure:**

          - **Disaster recovery:** 
            - when a copy of the data from Azure is restored to an on-premises network. In a typical disaster recovery scenario, a large amount of Azure data is exported to a Data Box. Microsoft then ships this Data Box, and the data is restored on your premises in a short time.
          - **Security requirements:** 
            - When you need to be able to export data out of Azure due to government or security requirements.
          - **Migrate back to on-premises or to another cloud service provider:** 
            - When you want to move all the data back to on-premises, or to another cloud service provider, export data via Data Box to migrate the workloads.

        **NOTE:**
        - Once the data from your import order is uploaded to Azure, the disks on the device are wiped clean in accordance with NIST 800-88r1 standards. For an export order, the disks are erased once the device reaches the Azure datacenter.





