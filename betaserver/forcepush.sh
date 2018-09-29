#!/bin/sh\
read -p "Please enter your commit for RQ-Production: " commit
if [ "$commit" = "" ] 
then
commit="forcepush"
echo "$commit"
else
echo "$commit"
fi

git add .
git commit -am "$commit"
git push
echo Press Enter...
read

read