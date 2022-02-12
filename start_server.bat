@echo off
java -Xmx2G -jar paper.jar -nogui
@rd /s /q logs
@del .console_history
pause
