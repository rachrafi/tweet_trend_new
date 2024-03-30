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
	        // Maven clean followed by build stages
                sh 'mvn clean deploy'
            }
        }
    }
}

