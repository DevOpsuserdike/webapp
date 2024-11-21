pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                echo 'checkout stage'
                git branch: 'main', url: 'https://github.com/DevOpsuserdike/webapp.git'
            }
        }
        stage('environment variable check'){
            steps {
                echo "Environemnt variables"
                echo "Build ID:  ${env.BUILD_ID}"
                echo "BUILD TAG:  ${env.BUILD_TAG}"
                
            }
        }
    }
}
