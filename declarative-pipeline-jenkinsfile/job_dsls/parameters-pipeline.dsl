pipelineJob('parameters-pipeline') {
    definition {
        cpsScm {
            scriptPath 'pipelines/parameters-pipeline.groovy'
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
