#!/bin/bash 

if [ -z "$1" ]; then 
  echo "INput YAML file is needed"
  exit 1
fi

if [ ! -f "$1" ]; then 
  echo "Given file does not exist"
  exit 1
fi 

YAML_FILE=$1

NUMBER_OF_STUDENTS=$(cat $YAML_FILE| yq . | jq '.STUDENT_LIST|length')
COURSE_NAME=$(cat devops46.yml | yq . | jq '.COURSE_NAME')

i=0
while [ $NUMBER_OF_STUDENTS -gt 0 ]; do 
  NAME=$(cat $YAML_FILE| yq . | jq ".STUDENT_LIST[$i].name")
  echo -e "Hi $NAME, Course $COURSE_NAME is getting started from 2019-02-29, Reach out to following number if you are intrested.\n Regards INST" 
  i=$(($i+1))
  NUMBER_OF_STUDENTS=$(($NUMBER_OF_STUDENTS-1))
done