pipelineJob('generic-pr-trigger_pipeline') {
    definition {
        cpsScm {
            scriptPath 'pipelines/generic-pr-trigger_pipeline.groovy'
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
