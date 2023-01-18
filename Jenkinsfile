pipeline {
  agent any
  stages {
    stage('git scm update') {
      steps {
        git url: 'https://github.com/dduddu00/CICD.git', branch: 'main'
      }
    }
    stage('docker build') {
      steps {
        sh '''
        docker build -t nginx:latest .
        '''
      }
    }
  }
}
