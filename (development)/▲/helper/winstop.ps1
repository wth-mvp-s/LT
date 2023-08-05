param (
    [int]$minutes = 0
)

# Check if the AudioDeviceCmdlets module is installed
if (-not (Get-Module -ListAvailable -Name 'AudioDeviceCmdlets')) {
    Write-Host "AudioDeviceCmdlets module not found. Attempting to install..."
    Install-Module -Name 'AudioDeviceCmdlets' -Force -Scope CurrentUser
}

if ($minutes -eq 0) {
    Write-Host "Shutting down immediately..."
    Stop-Computer -Force
} else {
    $delayInSeconds = $minutes * 60

    Import-Module AudioDeviceCmdlets

    $initialVolumePercentage = Get-AudioDevice -PlaybackVolume

    $initialVolume = [float]($initialVolumePercentage.TrimEnd('%'))


    Write-Host "Current playback volume: $($initialVolume)%"

    Write-Host "Shutting down in $minutes minute(s)..."

    

    for ($i = 1; $i -lt $delayInSeconds; $i++) {
        
        $targetVolumePercentage = $initialVolume - ($i * $volumeDecrementStep)


        $targetVolume = $targetVolumePercentage / 100
        
        Set-AudioDevice -PlaybackVolume $targetVolume
        Write-Host "Current playback volume: $($targetVolume*100)%"
        
        Start-Sleep -Seconds 1
    }

    # Shut down the computer
    Stop-Computer -Force
}
