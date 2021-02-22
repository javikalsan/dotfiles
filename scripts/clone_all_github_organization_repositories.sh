#!/bin/bash

# Before run the script set the following env vars:
#        - export ORG_NAME="PUT_HERE_THE_ORGANIZATION_NAME"
#        - export ACCESS_TOKEN="PUT_HERE_YOUR_GITHUB_TOKEN"


GITHUB_ORGS_API_BASE_URL="https://api.github.com/orgs/"
REPOSITORY_BASE_URL="git@github.com:$ORG_NAME/"
CURL_OPTIONS_REQUEST_HEADER=( -I -sS -H "Authorization: token $ACCESS_TOKEN" -H 'Accept: application/vnd.github.v3+json')
CURL_OPTIONS=( -sS -H "Authorization: token $ACCESS_TOKEN" -H 'Accept: application/vnd.github.v3+json')
TOTAL_REPOSITORIES=`curl "${CURL_OPTIONS_REQUEST_HEADER[@]}" "$GITHUB_ORGS_API_BASE_URL$ORG_NAME/repos?per_page=1&page=1" | grep 'link:' | sed -r 's/.*page=([^>]*).*/\1/'`
CODE_DIRECTORY="$HOME/code/$ORG_NAME/"
ITEMS_PER_PAGE=100
PAGES=$((($TOTAL_REPOSITORIES+($TOTAL_REPOSITORIES-1))/$ITEMS_PER_PAGE))


mkdir -p $CODE_DIRECTORY
cd $CODE_DIRECTORY
for PAGE in $(seq 1 $PAGES); do
    REPOS=`curl "${CURL_OPTIONS[@]}" "$GITHUB_ORGS_API_BASE_URL$ORG_NAME/repos?per_page=100&page=$PAGE" | grep ssh_url | sed -r "s/.*$ORG_NAME\/([^\"]*).*/\1/"`
    for REPO in $REPOS; do
        git clone $REPOSITORY_BASE_URL$REPO
        echo "done!"
        echo
    done
done

echo "All repositories cloned at $CODE_DIRECTORY"

