<#
To initiate a complete system shutdown after a specified time using PowerShell (run as Administrator), use the following command:

./filename number (in minutes)
Example:

./winstop.ps1 5

#>

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
    # Stop-Computer -Force
}
    $delayInSeconds = $minutes * 60
    $delayInMilliseconds = $minutes * 60 * 1000

    Import-Module AudioDeviceCmdlets
    $initialVolumePercentage = Get-AudioDevice -PlaybackVolume
    $initialVolumeAsNumber = [float]($initialVolumePercentage.TrimEnd('%'))

    if ($initialVolumeAsNumber -eq 0) {
        Write-Error "Error: volume level is 0. The program will exit in 5 seconds."
        Start-Sleep -Seconds 5
        exit 1
    }

else {

    
    Write-Host "Current Playback volume: $($initialVolumeAsNumber)%"
    Write-Host "Shutting down in $minutes minute(s)..."
    
    if ($delayInSeconds -eq $initialVolumeAsNumber) {
        
        for ($i = 1; $i -lt $delayInSeconds; $i++) {
            
            $initialVolumePercentage = Get-AudioDevice -PlaybackVolume
            $initialVolumeAsNumber = ([int]($initialVolumePercentage.TrimEnd('%')))
    

            
            Set-AudioDevice -PlaybackVolume ([int]$initialVolumeAsNumber - 1)
            
            $currentVolumePercentage = Get-AudioDevice -PlaybackVolume
            $currentVolumeAsNumber = ([int]($currentVolumePercentage.TrimEnd('%')))
            Write-Host "Current volume after decrement: $currentVolumeAsNumber"
            
            Start-Sleep -Seconds 1
        }
        Write-Host "[OS Notification] System shutdown imminent."
        Stop-Computer -Force

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
            Write-Host "Current volume after decrement: $currentVolumeAsNumber"
            
            Start-Sleep -Milliseconds $cadence
        }
        Write-Host "[OS Notification] System shutdown imminent."
        Stop-Computer -Force

    }       
    elseif ($delayInSeconds -lt $initialVolumeAsNumber) {
        
        while (([int]((Get-AudioDevice -PlaybackVolume).TrimEnd('%'))) -gt 0) {
            
            $currentVolumePercentage = Get-AudioDevice -PlaybackVolume
            $currentVolumeAsNumber = ([int]($currentVolumePercentage.TrimEnd('%')))
            
            $decrement = [int]($initialVolumeAsNumber / $delayInSeconds)
                if (($currentVolumeAsNumber - $decrement) -gt 0) {                      
            Set-AudioDevice -PlaybackVolume ([int]$currentVolumeAsNumber - $decrement)
                }
                else{
                    Set-AudioDevice -PlaybackVolume 0
                }
            $currentVolumePercentage = Get-AudioDevice -PlaybackVolume
            $currentVolumeAsNumber = ([int]($currentVolumePercentage.TrimEnd('%')))
            Write-Host "Current volume after decrement: $currentVolumeAsNumber"
            
            Start-Sleep -Seconds 1
        }
        Write-Host "[OS Notification] System shutdown imminent."
        Stop-Computer -Force

    }       
}