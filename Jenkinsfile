pipeline {
    agent any
    environment {
        name = "Siddhesh"
        number = "9322931282"
    }

    stages {
       /* stage("setup parameters"){
            steps {
                script {
                        properties([
                            parameters([
                                        booleanParam(description: 'Want to run?', name: 'Run'
                                        ), 
                                        choice(choices: ['Mango', 'Banana'], description: 'select the fruit', name: 'Fruit'
                                        ), 
                                        string(description: 'enter your name', name: 'Name'
                                        )
                                    ])
                        ])
                }   
            }  
        }*/
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
        /* stage('[parameters value in pipeline') {
            steps {
                echo "pipeline parameters value"
                echo "Name : ${params.Name}"
                echo "Fruit: ${params.fruit}"
                echo "RUN: ${params.Run}"
            }
        }
       stage("build with maven") {
            steps {
                script {
                    echo "maven build started"
                    sh 'pwd'
                    sh 'mvn --version'
                    sh 'mvn install'
                    sh 'mvn clean deploy'
                }
            }
            
        }*/
        stage("build maven with jfrog and nexus") {
            steps {
                script {
                    echo "maven build started"
                    sh 'pwd'
                    sh 'mvn --version'
                }
            }
        }

        stage("scanning stage") {
            steps {
                     echo "Scanning stage started"
            }
           
        }

        stage("jfrog stage") {
            steps{
                echo "jfrog stage started"
            }
        }
    }
}
