pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout your source code repository
                git branch: 'main', url: 'https://github.com/gopinekkanti/terraform-jenkins.git'
            }
        }
        
        stage('Terraform Init') {
            steps {
                // Run terraform init
                sh 'terraform init'
            }
        }
        
        stage('Terraform Plan') {
            steps {
                // Run terraform plan
                sh 'terraform plan -out=tfplan'
            }
        }
        
        stage('Terraform Apply') {
            steps {
                // Run terraform apply with auto-approve
                sh 'terraform apply -auto-approve '
            }
        }
    }
}
