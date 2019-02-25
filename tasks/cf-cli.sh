#!/bin/bash
cd code
echo "music-album" >> app-names.txt
IFS=$'\n' read -d '' -r -a allApps < app-names.txt

cd ../cf_command

COMMAND=start
cat > params.yml <<EOF
commands:
EOF
for i in "${allApps[@]}"
do
   :
   echo "- command: " $COMMAND >> params.yml
   echo "  app_name: " $i >> params.yml
done
