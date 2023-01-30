# Azure Cosmos DB
Azure Cosmos DB is a fully managed NoSQL and relational database for modern app development. Single-digit millisecond response times, and automatic and instant scalability, guarantee speed at any scale. Business continuity is assured with SLA-backed availability and enterprise-grade security.

App development is faster and more productive thanks to:

Turnkey multi region data distribution anywhere in the world
Open source APIs
SDKs for popular languages.
As a fully managed service, Azure Cosmos DB takes database administration off your hands with automatic management, updates and patching. It also handles capacity management with cost-effective serverless and automatic scaling options that respond to application needs to match capacity with demand.

## Key Benefits

- Uses No SQL DB
- Horizontal scaling  : This is achieved by Partitioning and Replicating.
    Partitioning - Logical Partitioning & Physical Partitioning.
    Replica - Interregion Replica & Outside Region Replica
    Scaling improves latency and throughput
- Flexible schema
- Supports multiple data models 
## Elements in a Azure Cosmos Account

![Cosmos DB](/00_includes/Cloud/Week3/cosmos-entities.png)

## Azure Cosmos Databases

You can create one or multiple Azure Cosmos databases under your account. A database is analogous to a namespace. A database is the unit of management for a set of Azure Cosmos containers.


## Azure Cosmos containers
An Azure Cosmos container is the unit of scalability both for provisioned throughput and storage. A container is horizontally partitioned and then replicated across multiple regions. The items that you add to the container are automatically grouped into logical partitions, which are distributed across physical partitions, based on the partition key. The throughput on a container is evenly distributed across the physical partitions.

When you create a container, you configure throughput in one of the following modes:

Dedicated provisioned throughput mode: The throughput provisioned on a container is exclusively reserved for that container and it is backed by the SLAs.

Shared provisioned throughput mode: These containers share the provisioned throughput with the other containers in the same database (excluding containers that have been configured with dedicated provisioned throughput). In other words, the provisioned throughput on the database is shared among all the “shared throughput” containers.

## Azure Cosmos items

Depending on which API you use, an Azure Cosmos item can represent either a document in a collection, a row in a table, or a node or edge in a graph. The following table shows the mapping of API-specific entities to an Azure Cosmos item:

## Consistency level

![Consistency](/00_includes/Cloud/Week3/five-consistency-levels.png)

## The type of Azure Cosmos account

- Provisioned throughput mode: 
- Serverless mode:
- Autoscale mode:

## Key Terminologies



## Exercise 1

- Created a Cosmos DB
- Created a function app
- Added a function with the code to add a document to the database.
- Intergated the function with the cosmos Db

### Sources

* [Azure Cosmos DB](https://learn.microsoft.com/en-us/training/modules/explore-azure-cosmos-db/)
* [Azure CosmosDB Documentation](https://learn.microsoft.com/en-us/azure/cosmos-db/)
* [ Video](https://www.youtube.com/watch?v=Dudcl8le2cE)
* [Video](https://www.youtube.com/watch?v=kiQlRXhNEvQ)


### Overcome challenges



### Results

Cosmos DB creation steps 

![CosmosDB](/00_includes/Cloud/Week3/CosmosDB/CosmosDBCreation.png)


![CosmosDB](/00_includes/Cloud/Week3/CosmosDB/CosmosDbCreation1.png)

![CosmosDB](/00_includes/Cloud/Week3/CosmosDB/CosmosDBcreated.png)

![CosmosDB](/00_includes/Cloud/Week3/CosmosDB/Databasecreated.png)

Create a container

![CosmosDB](/00_includes/Cloud/Week3/CosmosDB/Container1created.png)

New item added

![CosmosDB](/00_includes/Cloud/Week3/CosmosDB/NewItemAdded.png)

Create a function App to trigger a http request to insert data to DB

![CosmosDB](/00_includes/Cloud/Week3/CosmosDB/CreateFunctionApp.png)

Function to trigger the input of data

![CosmosDB](/00_includes/Cloud/Week3/CosmosDB/CreateFunction.png)

In the integration you have to bind the output to the Cosmos DB and ask the database to create a new database and collection 

![CosmosDB](/00_includes/Cloud/Week3/CosmosDB/Integration%2BOutput.png)

This is the code to run to add the data to the database

![CosmosDB](/00_includes/Cloud/Week3/CosmosDB/Code.png)

You have to give the id and name in the body of the Input before running the code.

![CosmosDB](/00_includes/Cloud/Week3/CosmosDB/Testwithdatainbody.png)

 Run success
 
![CosmosDB](/00_includes/Cloud/Week3/CosmosDB/TestSuccess.png)

The newly created data can be seen in the database

![CosmosDB](/00_includes/Cloud/Week3/CosmosDB/DataAddedintheDB.png)





