#!/bin/bash

DEPLOY_HOME="$HOME/deploy"
FILES="$DEPLOY_HOME/.profile.d/*.sh"

for f in $FILES
  HOME=$DEPLOY_HOME f
do
