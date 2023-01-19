pipeline {
  agent any
  stages {
    stage('git scm update') {
      steps {
        git url: 'https://github.com/dduddu00/jen.git', branch: 'main'
      }
    }
    stage('docker build') {
      steps {
        sh '''
        docker build -t nginx:latest .
        '''
      }
    }
    
    stage('deploy k8s') {
      steps {
        sh '''
        docker tag nginx:latest kyontoki/nginx:1.0
        docker push kyontoki/nginx:1.0
        '''
      }
    }
  }
}
