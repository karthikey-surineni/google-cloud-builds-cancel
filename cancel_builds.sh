#!/bin/bash
regex="\w+-\w+-\w+-\w+-\w+"
for item in $(gcloud builds list --filter "STATUS:QUEUED" --sort-by "CREATE_TIME")
do  
     [[ $item =~ $regex ]] && gcloud builds cancel $item
done