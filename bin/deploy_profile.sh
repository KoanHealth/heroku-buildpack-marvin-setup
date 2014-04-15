#!/bin/bash

MY_HOME="$HOME"
DEPLOY_HOME="$HOME/deploy"
FILES="$DEPLOY_HOME/.profile.d/*.sh"

HOME="$DEPLOY_HOME"
for f in $FILES
  source "$f"
do
HOME="$MY_HOME"

