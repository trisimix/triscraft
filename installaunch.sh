#/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
export JAVA_HOME=SCRIPTPATH/../jre1.8.0_201/
export PATH=JAVA_HOME/bin:$PATH
screen -d -m LaunchServer.sh 
