pipeline {
    agent any

    stages {
        stage ('Actualizacion Repositorio'){
            steps{
                script{
                    cleanWs()
                    checkout([$class: 'GitSCM',
                        branches: [[name: "main"]],
                        doGenerateSubmoduleConfigurations: false,
                        extensions: [],
                        submoduleCfg: [],
                        userRemoteConfigs: [[url: "https://github.com/edo2004/first-app.git" ]]
                    ])
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
