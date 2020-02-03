pipelineJob('parameters-pipeline') {
    definition {
        cpsScm {
            scriptPath 'pipelines/parameters-pipeline.groovy'
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
