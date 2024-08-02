# liquibase-Sybase-demo
This repo shows Azure Pipelines and Releases. 

There is one pipeline:
* CI pipeline --> [azure-pipelines-ci.yml](azure-pipelines-ci.yml)

## CI Pipeline
CI pipeline is run as part of new PR validation for changes merging from `dev` branch to `release` branch. This pipeline executes `liquibase checks run` on incoming changes.

## Releases
There are two release pipelines created: One pipeline to perform `update` operation and another pipeline to perform `rollback` operation.
* Code for `update` operation is shown in [update.cmd](release/update.cmd)
* Code for `rollback` operation is shown in [rollback.cmd](release/rollback.cmd)

Note about releases: 
* Stages: Create parallel stages for each pipeline to `update` or `rollback` changes to all QA databases
* Variables: Define variable groups for each environment. For example, a variable group called `QA1` to be linked to a stage which deploys to QA1 database.

 
## Database Connections
Sybase TDS driver jar file is provided in this repo [jtds-1.3.1.jar](sybase).

All information about QA databases is stored in Azure Pipeline library as a variable group `Liquibase_Variables`. It includes connection information such as database URLs, usernames, passwords, etc.

## Liquibase Properties
Liquibase properties are stored in Azure Pipeline library as a variable group `Liquibase_Variables`. For example, Liquibase Pro license keys are stored here.

