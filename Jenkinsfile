pipeline {
  agent any
  environment{
    DOCKERHUB_CREDENTIALS = credentials ('dockerhub')
    RepoDockerHub = 'rhxpchispi'
    NameContainer = 'myapp'
    VERSION = "dev"
  }
  stages {
    stage('Build'){
      steps{
        echo "COMIENZA EL PASO DE BUILD"
        sh "docker build -t ${env.RepoDockerHub}/${env.NameContainer}:${env.VERSION} ."
      }
    }
    stage('Login to Dockerhub'){
      steps{
        echo "COMIENZA EL PASO DE LOG IN A DOCKER"
        sh "echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin"
      }
    }
    stage('Push image to Dockerhub'){
      steps{
        sh "docker push ${env.RepoDockerHub}/${env.NameContainer}:${env.VERSION} "
      }
    }
  }
}