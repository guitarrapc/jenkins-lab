pipelineJob('parallelsteps_pipeline') {
    definition {
        cpsScm {
            scriptPath 'pipelines/parallelsteps_pipeline.groovy'
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
