#!/bin/sh

dshell() {
    docker exec -it "$1" bash
}
