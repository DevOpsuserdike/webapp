pipeline {
    agent any
    environment {
        name = "Siddhesh"
        number = "9322931282"
    }
    stages {
        stage('checkout') {
            steps {
                echo 'checkout stage'
                git branch: 'main', url: 'https://github.com/DevOpsuserdike/webapp.git'
            }
        }
        stage('jenkins environment variable check'){
            steps {
                echo "Jenkins Environemnt variables"
                echo "Build ID:  ${env.BUILD_ID}"
                echo "BUILD TAG:  ${env.BUILD_TAG}"
                
            }
        }
        stage('environemnt defined in pipeline') {
            steps {
                echo "pipeline environemnet"
                echo "Name : ${name}"
                echo "Number: ${number}"
            }
        }
    }
}
