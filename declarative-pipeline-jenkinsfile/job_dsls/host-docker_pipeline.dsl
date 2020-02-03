pipelineJob('host-docker_pipeline') {
    definition {
        cpsScm {
            scriptPath 'pipelines/host-docker_pipeline.groovy'
            scm {
                git {
                    remote {
                      url 'https://github.com/guitarrapc/jenkins-pipeline-lab.git'
                      credentials('github')
                    }
                    branch '*/master'
                }
            }
            lightweight(true)
        }
    }
}
