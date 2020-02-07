#!/bin/sh

dshell() {
    docker exec -it "$1" bash
}

# compdef __docker_complete_running_containers dshell