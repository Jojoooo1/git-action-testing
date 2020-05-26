#!/bin/bash
set -e # exit on first error (used for return)

RELEASE_VERSION=2.3.1

TAG_LIST=($(echo $RELEASE_VERSION | tr '.' ' '))

echo $TAG_LIST
echo ${#TAG_LIST[@]}

if [[ "${#TAG_LIST[@]}" -ne 3 ]]; then
  echo "$RELEASE_VERSION is not a valid semantic version"
  exit 1
else
  echo "VALID SEMANTIC_VERSION"
fi

[[ "${#TAG_LIST[@]}" -ne 3 ]] && echo "$RELEASE_VERSION is not a valid semantic version" && exit 1

echo "END"
