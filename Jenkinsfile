pipeline {
  agent {dockerfile true }
  environment {
      PATH = '$PATH:/usr/local/bin'
  }
  stages {
    stage('build') {
      steps {
        sh 'pip install -r requirements.txt'
      }
    }
    stage('build and start application') {
      steps {
            sh 'docker-compose -f docker-compose.yml up --build'
      } 
    }
  }
}
