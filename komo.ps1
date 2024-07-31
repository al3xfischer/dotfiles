AutoHotkey64 $env:USERPROFILE\.config\komorebic.ahk

komorebic start

$monitors = zebar monitors;
foreach ($monitor in $monitors) { 
    Start-Process -WindowStyle hidden -FilePath "zebar" -ArgumentList "open bar --args $monitor" 
}