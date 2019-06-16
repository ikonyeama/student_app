pipeline {
  agent {docker { image 'python:3.7.3' } }
  stages {
    stage('build and start application') {
      steps {
            sh 'docker-compose -f docker-compose.yml up --build'
      } 
    }
}
