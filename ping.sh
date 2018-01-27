#!/bin/bash
source config

readonly ADR="$IP"
#readonly OPT='-t 1'
readonly OPT='-c 1'
readonly cmd="ping ${OPT} ${ADR}"

${cmd} > /dev/null 2>&1

if [ $? = 0 ]; then
  echo "OK"
else
  echo "NG"
fi

exit 0
