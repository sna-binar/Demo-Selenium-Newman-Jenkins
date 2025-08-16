pipeline {
  agent {
    docker { image 'ci-agent' }
  }
  stages {
    stage('Clone') {
      steps {
        checkout scm
      }
    }
    stage('API (Newman)') {
      steps {
        sh '''
          newman run api-tests/*.postman_collection.json \
            -e api-tests/*.postman_environment.json
        '''
      }
    }
    stage('Run Maven Test') {
      steps {
        sh 'mvn -B clean test'
      }
    }
  }
}
