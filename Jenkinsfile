pipeline {
    agent {
        node {
            label 'maven'
        }
    }
environment {
    PATH = "/opt/apache-maven-3.9.6/bin:$PATH"
}
    stages {
        stage("Build") {
            steps {
                echo "------------ BUILD STARTED ----------------"
                sh 'mvn clean deploy -Dmaven.test.skip=true'
                echo "------------ BUILD COMPLETED --------------"
            }
        }

        stage("Test") {
            steps {
                echo "------------ UNIT TEST STARTED ------------"
                sh 'mvn surefire-report:report'
                echo "------------ UNIT TEST COMPLETED ----------"
            }
        }

        stage('SonarQube Analysis') {
            environment {
                scannerHome = tool 'sonar-scanner';
            }
            steps {
                withSonarQubeEnv('sonarqube-server') { // If you have configured more than one global server connection, you can specify its name
                sh "${scannerHome}/bin/sonar-scanner"
            }
            }

        }
    }
}

