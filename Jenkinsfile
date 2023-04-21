pipeline {
    
    agent any
    
    stages {
        
        stage("Git-Checout"){
            steps{
                withCredentials([usernamePassword(credentialsId: '3383be7f-8aeb-4cad-b189-8f740c778198', usernameVariable: 'GITHUB_USERNAME', passwordVariable: 'GITHUB_PASSWORD')]) {
    git credentialsId: '3383be7f-8aeb-4cad-b189-8f740c778198', url: 'https://github.com/udhayacloud/Jenkins-Docker-Pro.git'
             }
            }
        }
    }
}