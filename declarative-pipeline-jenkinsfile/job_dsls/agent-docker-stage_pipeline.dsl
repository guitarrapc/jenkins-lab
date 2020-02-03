pipelineJob('agent-docker-stage_pipeline') {
    definition {
        cpsScm {
            scriptPath 'pipelines/agent-docker-stage_pipeline.groovy'
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
