## declarative-pipeline-jenkinsfile

* Jenkins Version: 2.222.3
* BlueOcean Version: jenkinsci/blueocean:1.23.2

## Run

```shell
echo -n "mytoken" > ./secrets/github
docker-compose up --build
```

go to http://localhost:8084 to launch jenkins.

## Pipeline repo

pipeline groovy files are reference to other repogistory guitarrapc/jenkins-pipeline-lab.

> [guitarrapc/jenkins\-pipeline\-lab](https://github.com/guitarrapc/jenkins-pipeline-lab)

## Add jobs

you can add your own job and try how it works.

1. add pipeline groovy to [pipeline repo](https://github.com/guitarrapc/jenkins-pipeline-lab) or local `./job_dsls` folder.
1. add dsl to `./job_dsls/` and reference your repo or dsl file.
1. open `./casc_configs/jobs.yaml` and add file reference to `./job_dsls/your_job.dsl`.
1. reload via `open jenkins -> Manage Jenkins -> Configuration as Code -> Reload existing configuration`.
1. run build via `open jenkins -> jobs -> your job -> build`.

snippet to generate jobs.yaml content.

```shell
ls |  %{"  - file: /var/jenkins_job/job_dsls/$($_.Name)"}
```

## Build Badge

Build badge will offer by [Embeddable Build Status \| Jenkins plugin](https://plugins.jenkins.io/embeddable-build-status/).

show badge with following format.

```html
<img src="http://localhost:8084/job/<job_name>/badge/icon?style=<style>">
```

samples

```html
<img src="http://localhost:8084/job/catcherror_pipeline/badge/icon?style=flat">
```

```md
![](http://localhost:8084/job/catcherror_pipeline/badge/icon?style=flat)
```

## ref

reference other projects

* [Praqma/praqma\-jenkins\-casc: Repository for our casc demo setup](https://github.com/Praqma/praqma-jenkins-casc)
* [biz\-nakashima001/jcasc: jcasc test](https://github.com/biz-nakashima001/jcasc)
