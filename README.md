# Running the Demo
## Setting up the application and building the image for the first time
First, create a folder on your host and then git clone this project into that folder:
```
git clone https://github.com/twright-msft/mssql-node-docker-demo-app.git
```
To run the demo you just need to build the container:
```
docker build -t node-web-app .
```

Then, you need to run the container:
```
docker run -e ACCEPT_EULA=Y -e SA_PASSWORD=Pass@123 -p 1433:1433 -p 8080:8080 -d sqlserver-pilot
```
Note: make sure that your password matches what is in the import-data.sh script.

Then you can connect to the SQL Server in the container by running a tool on your host or you can docker exec into the container and run sqlcmd from inside the container.
```
docker exec -it <container name|ID> /bin/bash
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Yukon900
```
To show the web service response, open up a browser and point it to http://localhost:8080.

Now that you have the demo application prepared, you can setup and configure OpenShift.