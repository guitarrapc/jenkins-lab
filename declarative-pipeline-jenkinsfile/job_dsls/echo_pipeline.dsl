pipelineJob('pipeline_github') {
    definition {
        cpsScm {
            scriptPath '.jenkins/echo_pipeline.groovy'
            scm {
                git {
                    remote { url 'https://github.com/guitarrapc/jenkins-pipeline-lab.git' } //対象githubリポジトリ
                    branch '*/master'
                }
            }
            lightweight(true)
        }
    }
}
