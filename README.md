# SearXNG

Builds filtron from dalf/fitron to speed up SearXNG builds. The resulting image is only meant to prebuild the filtron binary for main branch builds.



### Project Links

Production Server / Instance : https://paulgo.io

DockerHub : https://hub.docker.com/r/paulgoio/searxng

GitHub : https://github.com/paulgoio/searxng

GitLab : https://paulgo.dev/paulgoio/searxng



### Development

* Clone this repo: ```git clone https://github.com/paulgoio/searxng.git```

* Switch to `filtron` branch: ```git checkout filtron```

* Make your changes to Dockerfile

* Build image: ```docker build --pull -f ./Dockerfile -t searxng-dev:filtron .```
