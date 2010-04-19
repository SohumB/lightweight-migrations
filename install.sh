#!/bin/sh

if [ 1 -ne $# ]
then
    echo "USAGE: $0 base_dir_of_git_repository_to_install_in"
    exit 0
fi

cp -r maintenance "$1/"
cat .gitignore >> "$1/.gitignore"
mkdir "$1/sql"
echo "Remember to create maintenance/run_sql."
