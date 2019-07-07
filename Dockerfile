FROM jupyter/base-notebook

# Add RUN statements to install packages as the $NB_USER defined in the base images.

# Add a "USER root" statement followed by RUN statements to install system packages using apt-get,
# change file permissions, etc.

# If you do switch to root, always be sure to add a "USER $NB_USER" command at the end of the
# file to ensure the image runs as a unprivileged user by default.

USER root

RUN apt-get update && apt-get install -y libtool libffi-dev ruby ruby-dev make libzmq3-dev libczmq-dev
RUN gem install cztop
RUN gem install iruby --pre
RUN iruby register --force

USER $NB_USER

RUN jupyter labextension install jupyterlab_vim
