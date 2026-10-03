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
                    C:\\opscode\\chef-workstation\\bin\\chef-client.bat --local-mode --chef-license accept --override-runlist myapp
                '''
            }
        }

       stage('Verify Deployment') {
    steps {
        bat '''
            powershell -Command "try { $response = Invoke-WebRequest -Uri http://localhost:8081 -UseBasicParsing; if ($response.StatusCode -eq 200) { Write-Host 'Application Server is running successfully!' } else { exit 1 } } catch { Write-Host 'Application Server verification failed!'; exit 1 }"
        '''
    }
}
    }
}