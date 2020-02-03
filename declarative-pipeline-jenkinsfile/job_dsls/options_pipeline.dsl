pipelineJob('options_pipeline') {
    definition {
        cpsScm {
            scriptPath 'pipelines/options_pipeline.groovy'
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
