pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Code checked out from GitHub'
            }
        }

        stage('Chef Deployment') {
            steps {
                bat '''
                    cd /d C:\\Users\\HP\\devops-chef-project
                    chef-client --local-mode --override-runlist myapp
                '''
            }
        }

        stage('Verify Deployment') {
            steps {
                bat '''
                    if exist C:\\DevOpsApp\\index.html (
                        echo Application deployed successfully!
                    ) else (
                        echo Application deployment failed!
                        exit /b 1
                    )
                '''
            }
        }
    }
}