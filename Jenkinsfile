pipeline {
  agent any
  
  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/sujatab05/flask-app.git'  // Update with your repository URL
      }
    }
    stage('Install Dependencies') {
      steps {
        sh 'pip install -r requirement.txt'
      }
    }
    stage('Run Tests') {
      steps {
        sh 'pytest'
      }
    }
  }
}
