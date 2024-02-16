# Azure Storage Redundancy:

- ## Functionality:
  - Azure Storage maintains multiple copies of data to protect against various events like hardware failures and disasters.
  - Redundancy ensures availability and durability targets are met even during failures.

- ## Considerations for Redundancy Options:
  - When selecting a redundancy option, consider the balance between cost and availability.
  - Factors influencing the choice include:
    - Replication strategy in the primary region.
    - Replication to a secondary region for disaster recovery.
    - Need for read access to the replicated data in the secondary region during primary region unavailability.


## Redundancy in the Primary Region:

- ### Replication in the Primary Region:
  - Azure Storage replicates data three times within the primary region for redundancy.
  - **Two options are available for replication**:
    - Locally Redundant Storage (LRS)
    - Zone-Redundant Storage (ZRS)

    - #### Locally redundant storage
        - Locally redundant storage (LRS) replicates your data three times within a single data center in the primary region. 

        - LRS provides at least 11 nines of durability (99.999999999%) of objects over a given year.

        - LRS offers the lowest-cost redundancy option.

        - It provides protection against server rack and drive failures within the primary region.

        - LRS has the least durability among redundancy options.

        - It may not protect against disasters like fire or flooding within the data center.

        - Microsoft recommends considering other redundancy options such as ZRS, GRS, or GZRS to mitigate risks associated with potential disasters.
        - ![alt text](image.png)










