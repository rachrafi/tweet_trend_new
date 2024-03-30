pipeline {
    agent {
        node {
            label 'maven'
        }
    }

    stages {
        stage('Clone code') {
            steps {
                git branch: 'main', url: 'https://github.com/rachrafi/tweet_trend_new.git'
            }
        }
    }
}

