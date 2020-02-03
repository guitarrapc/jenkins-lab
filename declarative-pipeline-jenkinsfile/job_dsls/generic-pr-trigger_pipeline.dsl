pipelineJob('generic-pr-trigger_pipeline') {
    definition {
        cpsScm {
            scriptPath 'pipelines/generic-pr-trigger_pipeline.groovy'
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
