@echo off

echo ===-------------------------------------===
echo     	[ HENSA BASE VRP ]
echo ===-------------------------------------===

echo Limpando cache...
rd /s /q "cache"  

echo Iniciando server...

start .\artifacts\FXServer.exe +exec server.cfg +set onesync_population true

exit


