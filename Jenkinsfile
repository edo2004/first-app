pipeline {
    agent any

    stages {
        stage ('Actualizacion Repositorio'){
            steps{
                script{
                    cleanWs()
                    checkout([$class: 'GitSCM',
                        branches: [[name: "dev"]],
                        doGenerateSubmoduleConfigurations: false,
                        extensions: [],
                        submoduleCfg: [],
                        userRemoteConfigs: [[url: "https://github.com/edo2004/first-app.git" ]]
                    ])
                }
            }
        }
        stage('Checkout tag') {
            steps {
                sh 'git checkout tags/TAG1'
            }
        }
    }
// ------------------------------------
// -- ETAPA: Checkov
// ------------------------------------
        
       
// ------------------------------------
// -- ETAPA: Terraform
// ------------------------------------

    options {
        preserveStashes()
        timestamps()
        ansiColor('xterm')
    }
}
