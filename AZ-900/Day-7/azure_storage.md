# Azure Storage Account Overview:

- ## Functionality:
  - Azure Storage Account provides a unique namespace for storing Azure Storage data accessible globally via HTTP/HTTPS.
  - It ensures data security, high availability, durability, and scalability.
  - Users start by selecting the storage account type, impacting storage services, redundancy options, and use cases.

- ## Redundancy Options:
  - Various redundancy options include:
    - Locally Redundant Storage (LRS)
    - Geo-Redundant Storage (GRS)
    - Read-Access Geo-Redundant Storage (RA-GRS)
    - Zone-Redundant Storage (ZRS)
    - Geo-Zone-Redundant Storage (GZRS)
    - Read-Access Geo-Zone-Redundant Storage (RA-GZRS)



|**Type**|**Supported services**|**Redundancy Options**|**Usage**|
|---|---|---|---|
|Standard general-purpose v2|Blob Storage (including Data Lake Storage), Queue Storage, Table Storage, and Azure Files|LRS, GRS, RA-GRS, ZRS, GZRS, RA-GZRS|Standard storage account type for blobs, file shares, queues, and tables. Recommended for most scenarios using Azure Storage. If you want support for network file system (NFS) in Azure Files, use the premium file shares account type.|
|Premium block blobs|Blob Storage (including Data Lake Storage)|LRS, ZRS|Premium storage account type for block blobs and append blobs. Recommended for scenarios with high transaction rates or that use smaller objects or require consistently low storage latency.|
|Premium file shares|Azure Files|LRS, ZRS|Premium storage account type for file shares only. Recommended for enterprise or high-performance scale applications. Use this account type if you want a storage account that supports both Server Message Block (SMB) and NFS file shares.|
|Premium page blobs|Page blobs only|LRS|Premium storage account type for page blobs only.|


## Storage Account Endpoints:

- **Functionality:**
  - Azure Storage Accounts provide a unique namespace for data in Azure, formed by a combination of the account name and Azure Storage service endpoint.
  - Naming rules for storage accounts:
    - Must be between 3 and 24 characters in length.
    - Can contain numbers and lowercase letters only.
    - Must be unique within Azure to ensure a unique namespace.
    
- **Endpoint Format:**
  - Below is the endpoint format for Azure Storage services:


    |**Storage service**|**Endpoint**|
    |---|---|
    |Blob Storage|https://<storage-account-name>.blob.core.windows.net|
    |Data Lake Storage Gen2|https://<storage-account-name>.dfs.core.windows.net|
    |Azure Files|https://<storage-account-name>.file.core.windows.net|
    |Queue Storage|https://<storage-account-name>.queue.core.windows.net|
    |Table Storage|https://<storage-account-name>.table.core.windows.net|
