#!/bin/bash

echo "Docker down"
docker-compose -f docker-compose.yml -f docker-compose.pipeline.yml down

