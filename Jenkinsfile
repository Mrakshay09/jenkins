pipeline{
    agent any
    tools{
        maven 'maven'
    }
    stages{
        stage('Checkout Code') {
            steps {
                checkout scmGit(
                    branches: [[name: '*/main']],
                    extensions: [],
                    userRemoteConfigs: [[
                        credentialsId: '0382542d-5372-4929-b90b-ffaa0f6c264f',
                        url: 'https://github.com/Mrakshay09/jenkins.git'
                    ]]
                )
            }
        }
        stage('Build with Maven') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Build Docker Image'){
            steps{
                script{
                    sh 'docker build -t mrakshay09/devops-integration:latest .'
                }
            }
        }
        stage('Push Image To Docker Hub'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerHubPwd', variable: 'dockerHubPwd')]) {
                        sh 'docker login -u mrakshay09 -p ${dockerHubPwd}'
                    }
                    sh 'docker push mrakshay09/devops-integration'
                }
            }
        }
    }
}