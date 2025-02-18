@echo off
adb kill-server
adb root



:loop
    adb.exe shell rm -rf /data/data/com.tencent.ig/files
  
TIMEOUT 1
goto:loop