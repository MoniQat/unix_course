deploy() {
    echo "Deploying app"
    
    # copy war to webapps
    cp ~/lab_1/datetime/target/datetime.war ~/apache/webapps/
    
    echo "Datetime deployed successfully."
}

undeploy() {
    echo "Undeploying Datetime"
    
    # remove war from webapps
    rm ~/apache/webapps/datetime.war
    
    echo "Datetime undeployed successfully."
}


if [ $# -ne 1 ]; then
    echo "./server_app.sh 1(deploy)"
    echo "./server_app.sh 2(undeploy)"
    exit 1
fi

#call deploy() or undeploy()
if [ "$1" = "1" ]; then
    deploy
elif [ "$1" = "2" ]; then
    undeploy
else
    echo "wrong"
    exit 1
fi
