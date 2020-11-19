#!/usr/bin/env bash

git::is_in_repo() {
  git rev-parse HEAD >/dev/null 2>&1
}

git::is_main_branch() {
  current_branch=$(git::current_branch)
  [ $current_branch == "master" ] || [ $current_branch == "main" ]
}

git::current_branch() {
  git branch | sed -n -e 's/^\* \(.*\)/\1/p'
}
