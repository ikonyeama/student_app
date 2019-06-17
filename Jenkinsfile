node {
    stage('Initialize')
    {
        def dockerHome = tool 'myDocker'
        env.PATH = '${dockerHome}/bin:${env.PATH}'
    }
    stage('build')
    {
        sh 'pip install -r requirements.txt'
    }
    stage('build and start application')
    {
            sh 'docker-compose -f docker-compose.yml up --build'
    }
}
