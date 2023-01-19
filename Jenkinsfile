pipeline {
  environment {
    repository = "kyontoki/nginx"
    DOCKERHUB_CREDENTIALS = credentials('kyontoki')
    dockerImage = ''
  }
  agent any
  stages {
    stage('git scm update') {
      steps {
        git url: 'https://github.com/dduddu00/CICD.git', branch: 'main'
      }
    }
    stage('docker login') {
      strps {
        echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin
      }
    }
    stage('docker build') {
      steps {
        sh '''
        docker build -t nginx:latest .
        '''
      }
    }
    
    stage('deploy deploy') {
      steps {
        sh '''
        docker tag nginx:latest kyontoki/nginx:1.0
        docker push kyontoki/nginx:1.0
        '''
      }
    }
  }
}
