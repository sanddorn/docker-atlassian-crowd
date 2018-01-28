[![CircleCI Build Status](https://img.shields.io/circleci/project/sanddorn/docker-atlassian-crowd/master.svg?label=CircleCI)](https://circleci.com/gh/sanddorn/docker-atlassian-crowd)

# Atlassian Crowd in a Docker container

This is a containerized installation of Atlassian Crowd with Docker. The aim of this image is to keep the installation as straight forward as possible, but with a few Docker related twists. You can get started by clicking the appropriate link below and reading the documentation.

[Atlassian Crowd](https://www.atlassian.com/software/crowd)

## Fast lane

To quickly get started running a Confluence instance, use the following command:

```bash
docker run --detach --publish 8080:8080 sanddorn/atlassian-docker:latest
```

Then simply navigate your preferred browser to `http://[dockerhost]:8080/crowd` and finish the configuration.

## Docker specifics

### Exposed ports

Ports 8080 and 8443 are exposed. These are the http and https ports of the crowd web-server.

### Volumes

_/var/atlassian/crowd_ is used as a volume. You may use a local directory or a volume image for the data directory of Crowd.
