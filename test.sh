#!/bin/bash
GITHUB_HEAD_REF=version-merge-4
DIFF=$(git diff $GITHUB_HEAD_REF origin/master  -- VERSION)

if [[ "$DIFF" ]]; then
    IFS='.'; read -r -a array <<< $(cat VERSION)
    CNT="${array[1]}"
    ((CNT++))
    echo "${array[0]}.${CNT}.${array[2]}"
fi
echo "here 33"
