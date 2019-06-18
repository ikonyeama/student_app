pipeline {
  agent {dockerfile true}
  options {
      timeout(time: 1, unit: 'DAYS')
      disableConcurrentBuilds()
  }
  stages {
    stage('Install Dependencies') {
      steps {
        sh 'pip install -r requirements.txt'
      }
    }
    stage('Build and Run Application') {
      agent { dockerfile true}
      steps {
	    sh 'docker-compose -f docker-compose.yml up --build'
      } 
    }
  }
}
