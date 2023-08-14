
$connectionString = "DefaultEndpointsProtocol=https;AccountName=storageaccountnamemusic;AccountKey=1RPJC54PdqiTDM49hEU1zU3/m4vZTmnToztVHg4loG5JARlalk/SoyWO8n2QNJ+8V2mTlcPY90oH+AStIAzdxA==;EndpointSuffix=core.windows.net"

foreach ($folder in Get-ChildItem -Directory) {
    $containerName = $folder.Name.ToLower()

    # Check if the container exists
    $exists = az storage container exists --name $containerName --connection-string $connectionString | ConvertFrom-Json

    # If it doesn't exist, create it
    if (-not $exists.exists) {
        az storage container create --name $containerName --connection-string $connectionString
    }

    Write-Host "Uploading $folder to container $containerName..."
    az storage blob upload-batch -s "$folder" -d "https://storageaccountnamemusic.blob.core.windows.net/$containerName" --type block --connection-string $connectionString
    Write-Host "$folder uploaded!"
}
