properties([parameters([choice(choices: ['us-east-2', 'us-east-1', 'us-west-1'], description: 'Select in which region you want to deploy the resource ??', name: 'region')])])
pipeline{
    agent any 
    stages{
        
        stage('git checkout'){
            steps{
                git branch: 'master', url: 'https://github.com/Wassi123/terra-jen-pra.git'
            }
        }
        stage('terraform init'){
            steps{
                sh 'terraform init'
            }
        }
         stage('terraform plan'){
            steps{
                sh "terraform plan -var 'region=${params.region}'"
            }
        }
         stage('terraform apply'){
            steps{
                 sh "terraform apply -var 'region=${params.region}' --auto-approve"
            }
        }
        stage('terraform destroy'){
            steps{
              sh "terraform destroy -var 'region=${params.region}' --auto-approve"
            }
        }
    }
}
