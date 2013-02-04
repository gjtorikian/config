#!/bin/sh
/usr/bin/ssh-agent -s > $HOME/.ssh/agent-env.sh
. $HOME/.ssh/agent-env.sh > /dev/null
