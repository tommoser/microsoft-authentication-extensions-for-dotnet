param (
    [string]$password = $(Read-Host "Input SQL SA Password"),
    [string]$containerName = "sql1"
)

$passwordBlock = "SA_PASSWORD=" + $password
docker kill $containerName
docker rm $containerName
docker run -e 'ACCEPT_EULA=Y' -e $passwordBlock -p 1433:1433 --name $containerName -d mcr.microsoft.com/mssql/server:2017-latest
