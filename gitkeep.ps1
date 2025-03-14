# Define the folders that need a .gitkeep file
$folders = @(
    "projects",
    "projects/01-cloud-infra",
    "projects/02-observability",
    "projects/03-security-compliance",
    "projects/04-payment-systems",
    "projects/05-devsecops-automation",
    "projects/06-final-project"
)

# Create a .gitkeep file in each folder
foreach ($folder in $folders) {
    $gitkeepPath = "$folder/.gitkeep"
    if (!(Test-Path $gitkeepPath)) {
        New-Item -ItemType File -Path $gitkeepPath -Force | Out-Null
    }
}
