pipeline {
    
    agent any
    
    stages {
        
        stage("git login"){
            steps{
                withCredentials([usernamePassword(credentialsId: '2', usernameVariable: 'GITHUB_USERNAME', passwordVariable: 'GITHUB_PASSWORD')]) {
    git credentialsId: '2', url: 'https://github.com/udhayacloud/Jenkins-Docker-Pro.git'
             }
            }
        }
    }
}