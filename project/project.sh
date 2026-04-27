#!/bin/bash

function config() {
read -p "Do you want to override the .env file? y/n: " ACTION
if [ "$ACTION" = "y" ]
   then
    echo "you chose yes"
    read -p "What is your email? " EMAIL
    read -p "What is your password? " PASSWORD
    USERNAME=$(echo "$EMAIL" | awk -F@ '{print $1}')
    gsed -i 's/^EMAIL=.*/EMAIL={{'$EMAIL'}}/' .env
    gsed -i 's/^PASSWORD=.*/PASSWORD={{'$PASSWORD'}}/' .env
    gsed -i 's/^USERNAME=.*/USERNAME={{'$USERNAME'}}/' .env
    echo "Automatically updated your EMAIL, PASSOWORD, AND USERNAME TO $EMAIL $PASSWORD $USERNAME"
    API_VERSION=$(awk -F= '$1 == "API_VERSION" {print $2}' .env)
       if [ "$API_VERSION" = "{{API_VERSION}}" ]
          then  
            INITIAL_VERSION=1.1
            gsed -i 's/^API_VERSION=.*/API_VERSION={{'$INITIAL_VERSION'}}/' .env
            echo "Automatically tagged the API_VERSION TO VERSION $INITIAL_VERSION"
            # exit
       else
            OLD_API_VERSION_VALUE=$(awk -F= '$1 == "API_VERSION" {print $2}' .env)
            OLD_API_VERSION=$(echo "$OLD_API_VERSION_VALUE" | sed 's/[{}]//g')
            newVersion=$(echo "$OLD_API_VERSION + 0.1" | bc)
            gsed -i 's/^API_VERSION=.*/API_VERSION={{'$newVersion'}}/' .env
            echo "Automatically tagged the API_VERSION TO VERSION $newVersion" 
            # exit
       fi
  elif [ "$ACTION" = "n" ]
   then     
    echo "you chose no"
    exit
  else
    echo "wrong input"
    exit
fi
}
test -e .env
status=$?
if [ "$status" -ne 0 ]
then
  echo "Env File does not exist"
  cat .env.example > .env
  echo "Env File has being created"
  config
else
  echo "The ENV File exists"
  config
fi
# 8072012191 opay adewale
# So ^EMAIL=.* essentially means "find the entire line that starts with EMAIL=" and replace the whole thing.