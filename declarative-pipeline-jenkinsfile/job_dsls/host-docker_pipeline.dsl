pipelineJob('host-docker_pipeline') {
    definition {
        cpsScm {
            scriptPath 'pipelines/host-docker_pipeline.groovy'
            scm {
                git {
                    remote {
                      url '${JOB_GITHUB_REPO}.git'
                      credentials('github')
                    }
                    branch '*/master'
                }
            }
            lightweight(true)
        }
    }
}
