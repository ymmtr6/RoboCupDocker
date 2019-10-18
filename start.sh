#!/bin/bash
docker run -it --rm -v ~/.Xauthority:/rc/.Xauthority -v `pwd`/logs:/home/rc/logs -v `pwd`/teams:/home/rc/teams ymmtr6/robocup bash
