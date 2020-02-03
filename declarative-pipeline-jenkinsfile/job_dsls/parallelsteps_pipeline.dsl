pipelineJob('parallelsteps_pipeline') {
    definition {
        cpsScm {
            scriptPath 'pipelines/parallelsteps_pipeline.groovy'
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
