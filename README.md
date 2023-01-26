# How to build Jenkins?

```
docker build -t jenkins-nodejs-dind .
```

# How to run Jenkins?

```
docker run -p 8080:8080 -p 50000:50000 -d --restart=on-failure -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd)/datadir:/var/jenkins_home --name jenkins-nodejs-dind jenkins-nodejs-dind
```

# How to monitor Jenkins?

```
docker logs -f jenkins-nodejs-dind
```