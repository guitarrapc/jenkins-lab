pipelineJob('parallel_pipeline') {
    definition {
        cpsScm {
            scriptPath 'pipelines/parallel_pipeline.groovy'
            scm {
                git {
                    remote {
                      url '${JOB_GITHUB_REPO}/jenkins-pipeline-lab.git'
                      credentials('github')
                    }
                    branch '*/master'
                }
            }
            lightweight(true)
        }
    }
}
