# blueocean
To allow Docker based builds through a Docker running BlueOcean Server

```
> docker run --rm -p 8080:8080 -p 4040:4040 -v /var/run/docker.sock:/var/run/docker.sock -v $PWD/blueocean_home:/var/jenkins_home logimethods/blueocean
```

For Jenkins, have a look at (logimethods/jenkins)[https://github.com/laugimethods/docker-jenkins]