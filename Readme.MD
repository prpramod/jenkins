How to Run the Jenkins docker image ? 

docker run -p 8080:8080 -p 50000:50000 --restart=on-failure -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk11

docker run -p 8080:8080 -p 50000:50000 --restart=on-failure -v pramod_jenkins_home:/var/jenkins_home pramodpra/jenkins-maven

How to build a Custom jenkins image with maven installed ?

---- Docker Image begins  ----
FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN apt-get update && apt-get install apt-file -y && apt-file update && apt-get install vim -y && apt-get install -y maven
# drop back to the regular jenkins user - good practice
USER jenkins
---- Docker image ends ----
docker build -t jenkins-maven .
docker tag jenkins-maven pramodpra/jenkins-maven 
docker push pramodpra/jenkins-maven


How to Login to Jenkins docker container as root user ?

docker exec -u 0 -it <docker container id>  bash
 docker exec -u 0 -it 81510f4a15af  bash 

How to install Maven inside the docker container ?

curl -O https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz
tar -zxvf apache-maven-3.8.6-bin.tar.gz
mv apache-maven-3.8.6 /opt/maven
cat > /etc/profile.d/maven.sh

export M2_HOME=/opt/maven
export PATH=${M2_HOME}/bin:${PATH}
Ctrl+d 
source /etc/profile.d/maven.sh
mvn -version


Jenkins docker LTS official github page : https://github.com/jenkinsci/docker/blob/master/README.md



https://www.jenkins.io/doc/pipeline/steps/workflow-basic-steps/

deleteDir: Recursively delete the current directory from the workspace
Recursively deletes the current directory and its contents. Symbolic links and junctions will not be followed but will be removed. To delete a specific directory of a workspace wrap the deleteDir step in a dir step. 


Java Maven App Sample: https://github.com/jenkins-docs/simple-java-maven-app.git


# Predefined variables in Jenkins 
https://www.jenkins.io/doc/book/pipeline/jenkinsfile/#using-environment-variables
