# jenkins-jhipster-docker

Sets up a container using the official Jenkins image and additional packages for running JHipster-builds.

## Usage

Clone this repo and build the image:

    docker build -t telefunken/jenkins-extended-docker .

Create a local folder "jenkins_home" (or copy an existing jenkins_home):

    mkdir /var/jenkins_home

Give folder-access to Docker-container:

    sudo chown -R 1000:1000 /var/jenkins_home

Run:

    docker run -d -p 8080:8080 --name jenkins -v /var/jenkins_home:/var/jenkins_home telefunken/jenkins-extended-docker
    
## TODO

Install Jenkins plugins through Dockerfile (at least NodeJS Plugin, Gradle Plugin, Git Plugin)

Setup Jenkins configuration through Dockerfile; at least JDK8, Gradle/Maven, NodeJS(type "grunt-cli"  at "Global npm packages to install" )

Setup example job using JHipster sample app.
