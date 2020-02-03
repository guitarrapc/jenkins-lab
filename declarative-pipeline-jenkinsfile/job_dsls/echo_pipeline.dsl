pipelineJob('pipeline_github') {
    definition {
        cpsScm {
            scriptPath '.jenkins/echo_pipeline.groovy'
            scm {
                git {
                    remote { url 'https://github.com/guitarrapc/jenkins-pipeline-lab.git' }
                    branch '*/master'
                }
            }
            lightweight(true)
        }
    }
}
