pipeline {
  agent { dockerfile true }
  stages {
    stage('Install Dependencies') {
      steps {
        sh 'pip install -r requirements.txt'
      }
    }
    stage('Build and Run Application') {
      steps {
	    sh '/usr/local/bin/docker-compose -f docker-compose.yml up --build'
      } 
    }
  }
}
