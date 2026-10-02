cd  /root/ansible

docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID vibhanshijain/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID  vibhanshijain/$JOB_NAME:latest

docker push  vibhanshijain/$JOB_NAME:$BUILD_ID

docker push  vibhanshijain/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID  vibhanshijain/$JOB_NAME:$BUILD_ID  vibhanshijain/$JOB_NAME:latest
