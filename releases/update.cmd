REM Prerequisite: Setup a PIPELINE variable called TAG prior to running this code.
REM Prerequisite: Setup Working Directory to be this: $(System.DefaultWorkingDirectory)/_MX-CI
echo PWD=%CD%
dir
cd MX
dir
tar -xvzf MX-583.zip
dir
cd s
dir
REM C:\agent\_work\_tool\liquibase-4.29.0\liquibase.bat flow --flow-file=flowfiles/liquibase.flowfile-cd.yaml
cmd.exe /k C:\agent\_work\_tool\liquibase-4.29.0\liquibase.bat tag %TAG% 
cmd.exe /k C:\agent\_work\_tool\liquibase-4.29.0\liquibase.bat update