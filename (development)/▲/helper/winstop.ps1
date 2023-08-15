param (
    [int]$minutes = 0
)

#Check if the AudioDeviceCmdlets module is installed
if (-not (Get-Module -ListAvailable -Name 'AudioDeviceCmdlets')) {
    Write-Host "AudioDeviceCmdlets module not found. Attempting to install..."
    Install-Module -Name 'AudioDeviceCmdlets' -Force -Scope CurrentUser
}

if ($minutes -eq 0) {
    Write-Host "Shutting down immediately..."
    Stop-Computer -Force
}
else {

    $delayInSeconds = $minutes * 60
    $delayInMilliseconds = $minutes * 60 * 1000

    Import-Module AudioDeviceCmdlets
    $initialVolumePercentage = Get-AudioDevice -PlaybackVolume
    $initialVolumeAsNumber = [float]($initialVolumePercentage.TrimEnd('%'))
    
    Write-Host "Current playback volume: $($initialVolumeAsNumber)%"
    Write-Host "Shutting down in $minutes minute(s)..."
    
    if ($delayInSeconds -eq $initialVolumeAsNumber) {
        # co 1s minus 1L
        
        for ($i = 1; $i -lt $delayInSeconds; $i++) {
            
            $initialVolumePercentage = Get-AudioDevice -PlaybackVolume
            $initialVolumeAsNumber = ([int]($initialVolumePercentage.TrimEnd('%')))
    

            
            Set-AudioDevice -PlaybackVolume ([int]$initialVolumeAsNumber - 1)
            
            $currentVolumePercentage = Get-AudioDevice -PlaybackVolume
            $currentVolumeAsNumber = ([int]($currentVolumePercentage.TrimEnd('%')))
            Write-Host "current volume after decrement $currentVolumeAsNumber"
            
            Start-Sleep -Seconds 1
        }
        Write-Host "[OS Notification] System shutdown imminent."
    }
    elseif ($delayInSeconds -gt $initialVolumeAsNumber) {
        
        $initialVolumePercentage = Get-AudioDevice -PlaybackVolume
        $initialVolumeAsNumber = ([int]($initialVolumePercentage.TrimEnd('%')))
        $cadence = [int]($delayInMilliseconds / $initialVolumeAsNumber)
        while (([int]((Get-AudioDevice -PlaybackVolume).TrimEnd('%'))) -gt 0) {
            
            $currentVolumePercentage = Get-AudioDevice -PlaybackVolume
            $currentVolumeAsNumber = ([int]($currentVolumePercentage.TrimEnd('%')))
            
            Set-AudioDevice -PlaybackVolume ([int]$currentVolumeAsNumber - 1)
            
            $currentVolumePercentage = Get-AudioDevice -PlaybackVolume
            $currentVolumeAsNumber = ([int]($currentVolumePercentage.TrimEnd('%')))
            Write-Host "current volume after decrement $currentVolumeAsNumber"
            
            Start-Sleep -Milliseconds $cadence
        }
        Write-Host "[OS Notification] System shutdown imminent."
    }       
    elseif ($delayInSeconds -lt $initialVolumeAsNumber) {
        
        while (([int]((Get-AudioDevice -PlaybackVolume).TrimEnd('%'))) -gt 0) {
            
            $currentVolumePercentage = Get-AudioDevice -PlaybackVolume
            $currentVolumeAsNumber = ([int]($currentVolumePercentage.TrimEnd('%')))
            
            $decrement = [int]($initialVolumeAsNumber / $delayInSeconds)
                        
            Set-AudioDevice -PlaybackVolume ([int]$currentVolumeAsNumber - $decrement)
            
            $currentVolumePercentage = Get-AudioDevice -PlaybackVolume
            $currentVolumeAsNumber = ([int]($currentVolumePercentage.TrimEnd('%')))
            Write-Host "current volume after decrement $currentVolumeAsNumber"
            
            Start-Sleep -Seconds 1
        }
        Write-Host "[OS Notification] System shutdown imminent."
    }       
}