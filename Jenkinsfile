pipeline {
  agent any
  options {
      timeout(time: 1, unit: 'DAYS')
      disableConcurrentBuilds()
  }
  stages {
    stage('Install Dependencies') {
      agent any
      steps {
        sh 'pip install -r requirements.txt'
      }
    }
    stage('Build and Run Application') {
      agent any
      steps {
	    sh 'docker-compose -f docker-compose.yml up --build'
      } 
    }
  }
}
