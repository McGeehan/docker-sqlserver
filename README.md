docker build -t sqlserver-pilot .
```
Then, you need to run the container:
```
docker run -e ACCEPT_EULA=Y -e SA_PASSWORD=Pass@123 -p 1433:1433 -p 8080:8080 -d sqlserver-pilot
```
Note: make sure that your password matches what is in the import-data.sh script.