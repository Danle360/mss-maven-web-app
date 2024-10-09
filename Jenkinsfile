//http://18.224.8.212:8080/manage/configure
pipeline {
  agent any
  tools {
      maven 'UI_Maven3..9.9'
  }

  environment {
    containerName = "http://18.224.8.212:8085/mss-walmart-qa-app/"
    serviceName = "devsecops-svc"
    imageName = "siddharth67/numeric-app:${GIT_COMMIT}"
    applicationURL = "http://18.224.8.212:8085/mss-walmart-dev"
    deploymentName = "http://18.224.8.212:8085/mss-walmart-dev-app/"
    //containerName = "devsecops-container"
    //serviceName = "devsecops-svc"
  //  imageName = "siddharth67/numeric-app:${GIT_COMMIT}"
     jenkins_server_url = "http://18.224.8.212:8080/"
    mss_web_app = "/increment/99"
  }

  stages {
    stage('Cloning Git') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/mss-walmart-dev']], extensions: [], userRemoteConfigs: [[credentialsId: 'democalculus-github-login-creds', url: 'https://github.com/democalculus/mss-maven-web-app.git']]])
            }
        }

    stage ('Build') {
      steps {
      sh 'mvn  clean install'
       }
    }

    stage ('DEV Deploy') {
      steps {
      echo "deploying to DEV Env "
      deploy adapters: [tomcat9(credentialsId: 'apache-tomcat-9-username-passord', path: '', url: 'http://18.224.8.212:8085/')], contextPath: 'mss-walmart-dev-app', war: '**/*.war'
      }
    }

    stage('QA approve') {
            steps {
                input('Do you want to proceed?')
            }
        }
    //
    // stage('QA approve') {
    //     steps {
    //       notifySlack("Do you approve QA deployment? $jenkins_server_url/job/$JOB_NAME", notification_channel, [])
    //         input 'Do you approve QA deployment?'
    //         }
    //     }

    stage ('QA Deploy') {
      steps {
      echo "deploying to QA Env "
      deploy adapters: [tomcat9(credentialsId: 'apache-tomcat-9-username-passord', path: '', url: 'http://18.224.8.212:8085/')], contextPath: 'mss-walmart-qa-app', war: '**/*.war'
      }
    }

  }

  }