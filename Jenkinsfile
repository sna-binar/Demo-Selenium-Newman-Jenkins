pipeline {
  agent any
  stages {
    stage('Clone') {
      steps {
        checkout scm
      }
    }
    stage('API (Newman)') {
      steps {
        sh '''
          if ls api-tests/*.postman_collection.json >/dev/null 2>&1; then
            newman run api-tests/collections/*.postman_collection.json \
              -e api-tests/*.postman_environment.json
          else
            echo "No Postman collection found. Skipping Newman."
          fi
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
