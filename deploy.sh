#!/bin/bash

#SRC_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#cat $SRC_DIR/target/cloud-debugger-demo-v1/WEB-INF/appengine-web.xml
#$( boot2docker shellinit | grep '^ *export' )
#gcloud config set project cloud-debugger-demo
#echo | gcloud preview app setup-managed-vms
#gcloud preview app deploy $SRC_DIR/target/cloud-debugger-demo-v1/

# deploy via GAE1
#export PATH=$PATH:~/appengine-java-sdk-1.9.26/bin/
echo check <application> in appengine-web.xml
mvc clean install
:~/appengine-java-sdk-1.9.26/bin/appcfg.sh update target/cloud-debugger-demo-v1
:~/appengine-java-sdk-1.9.26/bin/appcfg.sh set_default_version target/cloud-debugger-demo-v1
echo surf to https://csells-debugger-demo-1074.appspot.com/
