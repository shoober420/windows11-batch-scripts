rem # Deletes tmp, cache, prefetch, last known good configuration files, live kernel reports, and Windows.old
rem # Dont delete "rescache" folder

rmdir /s /q "C:\Windows\Temp"
rmdir /s /q "%USERPROFILE%\AppData\Local\Temp"
del "%USERPROFILE%\AppData\Local\cache" /f /q /s
del "%USERPROFILE%\AppData\Local\OneDrive\cache" /f /q /s
del "%USERPROFILE%\AppData\Local\CrashDumps" /f /q /s
del "%APPDATA%\Microsoft\Windows\Recent" /f /q /s
del "C:\Windows\Logs\MeasuredBoot" /f /q /s
del "C:\ProgramData\Microsoft\Windows\WER" /f /q /s
del "%USERPROFILE%\AppData\Local\Microsoft\Edge\User Data\Default\Cache" /f /q /s
del "%USERPROFILE%\AppData\Local\Microsoft\Edge\User Data\Default\DawnCache" /f /q /s
del "%USERPROFILE%\AppData\Local\Microsoft\Edge\User Data\Default\GPUCache" /f /q /s
del "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Cache" /f /q /s
del "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\DawnCache" /f /q /s
del "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\GPUCache" /f /q /s
del "%USERPROFILE%\AppData\Local\Google\Chrome SxS\User Data\Default\Cache" /f /q /s
del "%USERPROFILE%\AppData\Local\Google\Chrome SxS\User Data\Default\DawnCache" /f /q /s
del "%USERPROFILE%\AppData\Local\Google\Chrome SxS\User Data\Default\GPUCache" /f /q /s
del "%USERPROFILE%\AppData\Local\Chromium\User Data\Default\Cache" /f /q /s
del "%USERPROFILE%\AppData\Local\Chromium\User Data\Default\GPUCache" /f /q /s
DEL /F /S /Q /A %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db

rmdir /s /q "C:\Windows\LastGood"
rmdir /s /q "C:\Windows\LastGood.tmp"
rmdir /s /q "C:\Windows\LiveKernelReports"
rmdir /s /q "C:\Windows\Prefetch"

takeown /s %computername% /u %username% /f "C:\Windows.old"
icacls "C:\Windows.old" /grant:r %username%:F
rmdir /s /q "C:\Windows.old"
del "C:\Windows.old" /f /q /s

DEL /F /S /Q /A "C:\pagefile.sys"
DEL /F /S /Q /A "C:\swapfile.sys"

rem # Delete Direct3D cache
del "%USERPROFILE%\AppData\Local\D3DSCache" /f /q /s

rem # Deletes NVIDIA shader caches
rmdir /s /q "%LocalAppData%\NVIDIA\DXCache"
del "%USERPROFILE%\AppData\LocalLow\NVIDIA\PerDriverVersion\DXCache" /f /q /s
rmdir /s /q "%LocalAppData%\NVIDIA\GLCache"
del "%USERPROFILE%\AppData\LocalLow\NVIDIA\PerDriverVersion\GLCache" /f /q /s
del "%USERPROFILE%\AppData\Roaming\NVIDIA\ComputeCache" /f /q /s

rem # Delete Steam htmlcache
del "%USERPROFILE%\AppData\Local\Steam\htmlcache" /f /q /s

rem # Clear Windows Run MRU & typedpaths
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /va /f
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /va /f

rem # Clear Most Recent Application's Use of DirectX
reg delete "HKCU\Software\Microsoft\Direct3D\MostRecentApplication" /va /f
reg delete "HKLM\SOFTWARE\Microsoft\Direct3D\MostRecentApplication" /va /f

rem # Clear windows media player recent files and urls
reg delete "HKCU\Software\Microsoft\MediaPlayer\Player\RecentFileList" /va /f
reg delete "HKCU\Software\Microsoft\MediaPlayer\Player\RecentURLList" /va /f
reg delete "HKLM\SOFTWARE\Microsoft\MediaPlayer\Player\RecentFileList" /va /f
reg delete "HKLM\SOFTWARE\Microsoft\MediaPlayer\Player\RecentURLList" /va /f

rem # Clear list of Recent Files Opened, by Filetype
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /va /f
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /va /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU" /va /f

rem # Clear Windows Search Assistant history
reg delete "HKCU\Software\Microsoft\Search Assistant\ACMru" /va /f

rem # Clear Adobe Media Browser MRU
reg delete "HKCU\Software\Adobe\MediaBrowser\MRU" /va /f

rem # Clear MSPaint MRU
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Paint\Recent File List" /va /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Paint\Recent File List" /va /f

rem # Clear Wordpad MRU
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Wordpad\Recent File List" /va /f
        
rem # Clear Map Network Drive MRU MRU
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Map Network Drive MRU" /va /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Map Network Drive MRU" /va /f

rem # Clear list of recent programs opened
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /va /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRULegacy" /va /f

rem # Clear regedit last key
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit" /va /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Regedit" /va /f
        
rem # Clear regedit favorites
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit\Favorites" /va /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Regedit\Favorites" /va /f




PAUSE
