param (
    [int]$minutes = 0
)

if ($minutes -eq 0) {
    Write-Host "Shutting down immediately..."
    Stop-Computer -Force
} else {
    $delayInSeconds = $minutes * 60
    Write-Host "Shutting down in $minutes minute(s)..."
    Start-Sleep -Seconds $delayInSeconds
    Stop-Computer -Force
}