#/bin/bash
SCRIPTPATH="`pwd`"
export JAVA_HOME=SCRIPTPATH/../jre1.8.0_201/
export PATH=JAVA_HOME/bin:$PATH
chmod +x LaunchServer.sh
screen -d -m LaunchServer.sh 
