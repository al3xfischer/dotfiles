AutoHotkey64 $env:USERPROFILE\.config\komorebic.ahk

komorebic start

# $monitors = zebar monitors;
# foreach ($monitor in $monitors) { 
# 	Start-Process -WindowStyle hidden -FilePath "zebar" -ArgumentList "open bar --args $monitor" 
# } 

# only works for one monitor right now
# no release avaliable
Start-Process -WindowStyle hidden -FilePath C:\Users\Alex\projects\komorebi\target\release\komorebi-bar.exe
