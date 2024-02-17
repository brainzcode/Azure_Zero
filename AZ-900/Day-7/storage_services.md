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






