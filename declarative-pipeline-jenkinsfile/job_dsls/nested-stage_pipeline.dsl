pipelineJob('nested-stage_pipeline') {
    definition {
        cpsScm {
            scriptPath 'pipelines/nested-stage_pipeline.groovy'
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
