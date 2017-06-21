#!/bin/bash

# Use this script "tm" instead of trying to attach
# to an existing session and if that fails, setting up
# a new session. This script just handles it - if a
# session is running, it'll attach.

# Quit from the session with Ctrl-D or exit, and it'll
# remove that session, detach with Ctrl-B D, and it'll
# keep that session alive until next time

tmux -2 attach -t craig || tmux -2 new -s craig

