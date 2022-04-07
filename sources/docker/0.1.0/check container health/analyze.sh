#!/bin/bash

sudo docker ps --quiet | xargs sudo docker inspect --format '{{ .Id }}: Health={{ .State.Health.Status }}'