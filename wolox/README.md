# wolox

```shell
docker-compose build
docker-compose up
```

go to http://localhost:8081 to launch jenkins.

## Prepare Jenkins

Add Following Plugins

> go to `Manage Jenkins > Manage Plugins`

* pipeline utility steps
* AnsiColor

Add Following Shared Libraries.

> go to `Manage Jenkins > Configure System > Global Pipeline Libraries`

* name: wolox-ci
  * GitHub URL: https://github.com/guitarrapc/wolox-ci.git
  * Default version: import
