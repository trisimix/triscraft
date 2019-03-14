@ECHO OFF

:: When setting the memory below make sure to include the amount of ram letter. M = MB, G = GB. Don't use 1GB for example, it's 1G ::

:: This is 64-bit memory ::
set memsixtyfour=4G

:: This is 32-bit memory - maximum 1.2G ish::
set memthirtytwo=1G

:: Don't edit past this point ::

if $SYSTEM_os_arch==x86 (
  echo OS is 32
  set mem=%memthirtytwo%
) else (
  echo OS is 64
  set mem=%memsixtyfour%
)
java -server -Xmx%mem% -XX:PermSize=256M -XX:+UseG1GC -Xms4G -Dsun.rmi.dgc.server.gcInterval=2147483646 -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -Dfml.queryResult=confirm -jar forge-1.7.10-10.13.4.1614-1.7.10-universal.jar nogui
PAUSE
