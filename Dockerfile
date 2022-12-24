FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN apt-get update && apt-get install apt-file -y && apt-file update && apt-get install vim -y && apt-get install -y maven
# drop back to the regular jenkins user - good practice
USER jenkins
#pull using 'docker pull pramodpra/jenkins-maven'
#run using command 
#docker run -p 8080:8080 -p 50000:50000 --restart=on-failure -v pramod_jenkins_home:/var/jenkins_home pramodpra/jenkins-maven