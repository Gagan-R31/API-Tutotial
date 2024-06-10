# Read the JSON data from the file
$jsonData = Get-Content -Raw -Path "data.json"

# Define the headers
$headers = @{
    "Content-Type" = "application/json"
}

# URL for the POST request
$url = "http://127.0.0.1:8000/api/data/"

try {
    # Make the POST request
    $response = Invoke-RestMethod -Uri $url -Method Post -Body $jsonData -Headers $headers

    # Output the response
    $response | ConvertTo-Json
} catch {
    # Output the error
    Write-Error $_
}
