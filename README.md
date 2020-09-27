# docker-scrapyd

Dockerized Scrapyd server.

## Prerequisites

1. [docker-machine](https://docs.docker.com/machine/install-machine/)
2. [scrapyd-client]()

## Installation

From a bash terminal, pull the Docker image [`zwilson/scrapyd`](https://hub.docker.com/r/zwilson/docker-scrapyd)

    docker pull zwilson/scrapyd

*see [Contribute](./#Contribute) for installalling in a  development environment.*

## Usage

Start the docker container

    docker run --rm -d -v $PWD/data:/home/scrapyd/data -p 6800:6800 zwilson/scrapyd

From the root of a Scrapy project

    scrapyd-deploy  # scrapyd-client
    curl http://localhost:6800/schedule.json -d project=$PROJECT_NAME -d spider=$SPIDER_NAME

To use python dependencies not included with the `scrapyd` distribution, such as [Scrapy extensions]() add this repository as a submodule to a scrapyd project, update `./docker-scrapyd/requirements.txt` the run

    docker build -t scrapyd:latest ./docker-scrapyd/.

## Contribute

    git clone https://github.com/zazazack/docker-scrapyd.git
    cd docker-scrapyd
    docker-compose up -d

*alternatively*,

    docker stack up -c ./docker-stack.yml up scrapyd

## References

- [Docker](https://docs.docker.com)
- [Scrapy](https://scrapy.readthedocs.io/en/latest/)
- [Scrapyd](http://scrapyd.readthedocs.io/en/stable/)
- [scrapyd-client]()


