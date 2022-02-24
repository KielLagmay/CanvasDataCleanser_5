@echo off

rem Sources:
rem https://stackoverflow.com/questions/5898763/how-do-i-get-the-ip-address-into-a-batch-file-variable

for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do set NetworkIP=%%a
pyro5-ns -n %NetworkIP%