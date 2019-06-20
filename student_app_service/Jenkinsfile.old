pipeline {
  agent {dockerfile true}
  options {
      timeout(time: 1, unit: 'DAYS')
      disableConcurrentBuilds()
  }
  stages {
    stage('Build and Run Application') {
      steps {
	    sh 'docker-compose -f docker-compose.yml up --build'
      } 
    }
  }
}
