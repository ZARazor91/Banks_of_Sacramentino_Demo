@echo off
java -Xmx2G -jar paper-1.18.1-154.jar -nogui
@rd /s /q logs
@del .console_history
pause
