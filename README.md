[![Build Status](https://travis-ci.org/shihanng/iruby-docker.svg?branch=master)](https://travis-ci.org/shihanng/iruby-docker)
![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/shihanng/iruby-docker.svg?style=popout)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/shihanng/iruby-docker.svg?style=popout)
[![](https://images.microbadger.com/badges/version/shihanng/iruby-docker.svg)](https://microbadger.com/images/shihanng/iruby-docker "Get your own version badge on microbadger.com")

# iruby-docker

iruby-docker is a community maintained Jupyter Docker Stack image
with [iruby](https://github.com/SciRuby/iruby) installed.
This image is built based on the [Jupyter Docker Stacks's cookiecutter](https://jupyter-docker-stacks.readthedocs.io/en/latest/contributing/stacks.html),
the image is available on [Docker Hub](https://hub.docker.com/r/shihanng/iruby-docker).

## Usage

```
$ docker run -it --name iruby-notebook --rm -p 8888:8888 -v `pwd`:/home/jovyan/work shihanng/iruby-docker:latest
...

    To access the notebook, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/nbserver-17-open.html
    Or copy and paste one of these URLs:
        http://(xxxxxxxxxxxx or 127.0.0.1):8888/?token=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

Based on the URL above, visit `http://127.0.0.1:8888/?token=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx`.
This command will mount the current working directory (`pwd`)
to the `/home/jovyan/work` directory in Docker container
and all files can be found in the `work` directory in the browser as shown:

![Jupyter Notebook](/screenshots/notebook.png)

Use `JUPYTER_ENABLE_LAB` environment variable to enable [JupyterLab](https://jupyterlab.readthedocs.io/en/stable/).

```
$ docker run -it --name iruby-notebook --rm -p 8888:8888  -e JUPYTER_ENABLE_LAB=yes -v `pwd`:/home/jovyan/work shihanng/iruby-docker:latest
```

![JupyterLab](/screenshots/jupyterlab.png)
