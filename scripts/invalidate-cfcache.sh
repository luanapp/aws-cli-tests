#!/bin/bash

while getopts ":hp:d:" opt; do
  case ${opt} in
    p | path )
      CF_PATH=$OPTARG
      ;;
    d | distribution )
      CF_DISTRIBUTION=$OPTARG
      ;;
    h )
      echo "Usage:"
      echo "    invalidate-cfcache.sh -h                      Display this help message."
      echo "    invalidate-cfcache.sh                         Install a Python package."
      exit 0
      ;;
    \? )
      echo "Invalid option: $OPTARG" 1>&2
      ;;
    : )
      echo "Invalid option: $OPTARG requires an argument" 1>&2
      ;;
  esac
done
shift $((OPTIND -1))

if [ ! -z "$CF_PATH" -a ! -z "$CF_DISTRIBUTION" ]; then
  aws cloudfront create-invalidation --distribution $CF_DISTRIBUTION --path $CF_PATH
fi
