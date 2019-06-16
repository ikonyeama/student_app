pipeline {
  agent { docker { image 'python:3.7.3' } }
  stages {
    stage('build') {
      steps {
        sh 'pip install -r requirements.txt'
      }
    }
    stage('build and start application') {
	 withEnv(["DOCKER_HOME=/usr/local/bin"]){ 
      steps {
	    sh 'docker-compose up'
      }
     }	  
    }
  }
}
