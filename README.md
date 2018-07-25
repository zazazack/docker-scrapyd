# docker-scrapyd

Scrapyd server

## Features

-   scrapy extension modules
    <!--  TODO: -->
-   cgi server (coming soon)
-   nginx server (coming soon)

## Prerequisites

1. Docker-CE
2. scrapyd-client (`pip install scrapyd-client`)

## Installation

    $ git clone https://github.com/zazazack/docker-scrapyd.git
    $ cd docker-scrapyd
    $ docker-compose up -d

## Usage

From the root of your Scrapy project

    $ scrapyd-deploy
    $ curl http://localhost:6800/schedule.json -d project=$PROJECT_NAME -d spider=$SPIDER_NAME

## References

- [Scrapy](https://scrapy.readthedocs.io/en/latest/)
- [Scrapyd](http://scrapyd.readthedocs.io/en/stable/)
- [Docker-CE](https://docs.docker.com)
