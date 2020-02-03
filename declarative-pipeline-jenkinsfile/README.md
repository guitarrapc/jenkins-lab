# declarative-pipeline-jenkinsfile

```shell
echo -n "mytoken" > ./secrets/github
docker-compose build
docker-compose up
```

go to http://localhost:8084 to launch jenkins.

## Add jobs

you can add your own job and try how it works.

1. add pipeline groovy to your repo or `./job_dsls` folder.
1. add dsl to `./job_dsls/` and reference your repo or dsl file.
1. open jenkins -> jobs -> your job, and run build.
