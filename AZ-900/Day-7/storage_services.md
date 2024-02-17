# Azure storage services

- The Azure Storage platform includes the following data services:

    - **Azure Blobs:** 
      - A massively scalable object store for text and binary data. Also includes support for big data analytics through Data Lake Storage Gen2.
    - **Azure Files:** 
      - Managed file shares for cloud or on-premises deployments.
    - **Azure Queues:** 
      - A messaging store for reliable messaging between application components.
    - **Azure Disks:** 
      - Block-level storage volumes for Azure VMs.
    - **Azure Tables:** 
      - NoSQL table option for structured, non-relational data.

## Benefits of Azure Storage

- Azure Storage services offer the following benefits for application developers and IT professionals:

    - **Durable and highly available:** 
      - Redundancy ensures that your data is safe if transient hardware failures occur. You can also opt to replicate data across data centers or geographical regions for additional protection from local catastrophes or natural disasters. Data replicated in this way remains highly available if an unexpected outage occurs.
    - **Secure:** 
      - All data written to an Azure storage account is encrypted by the service. Azure Storage provides you with fine-grained control over who has access to your data.
    - **Scalable:** 
      - Azure Storage is designed to be massively scalable to meet the data storage and performance needs of today's applications.
    - **Managed:** 
      - Azure handles hardware maintenance, updates, and critical issues for you.
    - **Accessible:** 
      - Data in Azure Storage is accessible from anywhere in the world over HTTP or HTTPS. 
      - Microsoft provides client libraries for Azure Storage in a variety of languages, including .NET, Java, Node.js, Python, PHP, Ruby, Go, and others, as well as a mature REST API. 
      - Azure Storage supports scripting in Azure PowerShell or Azure CLI. And the Azure portal and Azure Storage Explorer offer easy visual solutions for working with your data.

## Azure Blob Storage:

- Azure Blob storage is an object storage solution for the cloud.
- It stores unstructured data like text or binary data and can manage massive amounts of data.
- Blob storage supports thousands of simultaneous uploads, large video files, growing log files, and is accessible from anywhere with an internet connection.
- Blobs can contain various types of data, including binary data from scientific instruments, encrypted messages, or custom data formats for applications.
- Blob storage removes the need for developers to manage disks as Azure handles the physical storage requirements.
- Blob storage is ideal for:

    - Serving images or documents directly to a browser.
    - Storing files for distributed access.
    - Streaming video and audio.
    - Storing data for backup and restore, disaster recovery, and archiving.
    - Storing data for analysis by an on-premises or Azure-hosted service.

    - ### Accessing blob storage
        - Objects in blob storage can be accessed from anywhere in the world via HTTP or HTTPS. Users or client applications can access blobs via URLs, the Azure Storage REST API, Azure PowerShell, Azure CLI, or an Azure Storage client library. 
        - The storage client libraries are available for multiple languages, including .NET, Java, Node.js, Python, PHP, and Ruby.

    - ### Blob storage tiers
        - Cloud-stored data can grow exponentially, necessitating cost-effective management strategies.
        - Organizing data based on attributes like access frequency and retention period helps manage costs.
        - Azure provides various access tiers to accommodate different access needs and balance storage costs.

        - **Azure Storage offers different access tiers for your blob storage, helping you store object data in the most cost-effective manner. The available access tiers include:**

            - **Hot access tier:** 
              - Optimized for storing data that is accessed frequently (for example, images for your website).
            - **Cool access tier:** 
              - Optimized for data that is infrequently accessed and stored for at least 30 days (for example, invoices for your customers).
            - **Cold access tier:** 
              - Optimized for storing data that is infrequently accessed and stored for at least 90 days.
            - **Archive access tier:** 
              - Appropriate for data that is rarely accessed and stored for at least 180 days, with flexible latency requirements (for example, long-term backups).
        - **The following considerations apply to the different access tiers:**

          - Hot and cool access tiers can be set at the account level. The cold and archive access tiers aren't available at the account level.
          - Hot, cool, cold, and archive tiers can be set at the blob level, during or after upload.
          - Data in the cool and cold access tiers can tolerate slightly lower availability, but still requires high durability, retrieval latency, and throughput characteristics similar to hot data. For cool and cold data, a lower availability service-level agreement (SLA) and higher access costs compared to hot data are acceptable trade-offs for lower storage costs.
          - Archive storage stores data offline and offers the lowest storage costs, but also the highest costs to rehydrate and access data.

## Azure Files

- Azure File storage provides managed file shares accessible via SMB or NFS protocols.
- File shares can be mounted concurrently by cloud or on-premises deployments.
- SMB file shares are accessible from Windows, Linux, and macOS, while NFS shares are accessible from Linux or macOS.
- SMB file shares can be cached on Windows Servers with Azure File Sync for faster access.
- ### Azure Files key benefits:

  - **Shared Access**: Azure file shares support the industry standard SMB and NFS protocols, meaning you can seamlessly replace your on-premises file shares with Azure file shares without worrying about application compatibility.


  - **Fully Managed**: Azure file shares can be created without the need to manage hardware or an OS. This means you don't have to deal with patching the server OS with critical security upgrades or replacing faulty hard disks.
  - **Scripting and Tooling**: PowerShell cmdlets and Azure CLI can be used to create, mount, and manage Azure file shares as part of the administration of Azure applications. You can create and manage Azure file shares using Azure portal and Azure Storage Explorer.
  - **Resiliency**: Azure Files has been built from the ground up to always be available. Replacing on-premises file shares with Azure Files means you don't have to wake up in the middle of the night to deal with local power outages or network issues.
  - **Familiar Programmability**: Applications running in Azure can access data in the share via file system I/O APIs. Developers can therefore use their existing code and skills to migrate existing applications. In addition to System IO APIs, you can use Azure Storage Client Libraries or the Azure Storage REST API.

## Azure Queues
- Azure Queue storage is designed for storing large numbers of messages.
- Messages can be accessed globally via authenticated calls using HTTP or HTTPS.
- Each queue can hold potentially millions of messages, with each message up to 64 KB in size.
  
- Queues are commonly used to manage workloads asynchronously, creating a backlog of tasks to process.
- Queue storage can be integrated with Azure Functions to trigger actions when messages are received.
- For example, messages in the queue can represent tasks or events, such as form submissions on a website.
- Azure Functions can be configured to execute specific actions in response to messages being added to the queue.

## Azure Disks
- Azure Disk storage, or Azure managed disks, are block-level storage volumes managed by Azure for use with Azure VMs. Conceptually, they’re the same as a physical disk, but they’re virtualized – offering greater resiliency and availability than a physical disk. 

- With managed disks, all you have to do is provision the disk, and Azure will take care of the rest.

## Azure Tables
- Azure Table storage stores large amounts of structured data. Azure tables are a NoSQL datastore that accepts authenticated calls from inside and outside the Azure cloud. 

- This enables you to use Azure tables to build your hybrid or multi-cloud solution and have your data always available. Azure tables are ideal for storing structured, non-relational data.














