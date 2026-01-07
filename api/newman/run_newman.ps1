# Requires: Node.js + newman installed
# Install once: npm install -g newman

$collection = "..\postman\RestfulBooker.collection.json"
$env = "..\postman\RestfulBooker.environment.json"

if (!(Test-Path $collection)) { Write-Error "Missing collection: $collection"; exit 1 }
if (!(Test-Path $env)) { Write-Error "Missing environment: $env"; exit 1 }

newman run $collection -e $env --reporters cli,junit --reporter-junit-export "..\..\artifacts\newman-junit.xml"