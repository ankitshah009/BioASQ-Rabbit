#!/bin/bash
docker run -d -p 5672:5672 -p 15672:15672 --hostname deiss --name rabbit rabbitmq:3-management
