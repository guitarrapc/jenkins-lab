pipelineJob('post_pipeline') {
    definition {
        cpsScm {
            scriptPath 'pipelines/post_pipeline.groovy'
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
