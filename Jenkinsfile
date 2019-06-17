node {
  agent {dockerfile true }
  environment {
      PATH = '$PATH:/usr/local/bin'
  }
  stages {
    stage('Initialize') {
        steps {
        def dockerHome = tool 'myDocker'
        env.PATH = '${dockerHome}/bin:${env.PATH}'
        }
    }
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
