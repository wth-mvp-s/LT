# Get the current playback volume
$playbackVolume = Get-AudioDevice -PlaybackVolume

# Display the volume
Write-Host "Current playback volume: $playbackVolume"