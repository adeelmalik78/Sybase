REM Prerequisite: Setup a PIPELINE variable called TAG prior to running this code.
REM Prerequisite: Setup Working Directory to be this: $(System.DefaultWorkingDirectory)/_MX-CI
echo PWD=%CD%

dir
cd MX
dir

REM C:\agent\_work\_tool\liquibase-4.29.0\liquibase.bat flow --flow-file=flowfiles/liquibase.flowfile-cd-rollback.yaml
C:\agent\_work\_tool\liquibase-4.29.0\liquibase.bat rollback %TAG%