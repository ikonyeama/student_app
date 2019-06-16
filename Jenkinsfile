pipeline {
  agent { docker { image 'python:3.7.3' } }
  stages {
    stage('Initialize'){
      steps {
        def dockerHome = tool 'myDocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
      }
    }
    stage('build') {
      steps {
        sh 'pip install -r requirements.txt'
      }
    }
    stage('build and start application') {
      steps {
	    sh '/usr/local/bin/docker-compose -f docker-compose.yml up --build'
      } 
    }
  }
}
