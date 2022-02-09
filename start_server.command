#!/bin/bash
cd "`dirname "$0"`"
java -Xmx2G -jar paper.jar -nogui
rmdir logs
rm .console_history
