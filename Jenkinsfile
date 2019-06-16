pipeline {
  agent { docker { image 'python:3.7.3' } }
  environment {
        PATH = "$PATH:/usr/local/bin"
    }
  stages {
    stage('build') {
      steps {
        sh 'pip install -r requirements.txt'
      }
    }
    stage('build and start application') {
      steps {
	    sh 'docker-compose up'
      }
    }
  }
}
