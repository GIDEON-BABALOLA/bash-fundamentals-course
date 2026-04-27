#!/bin/bash
if [[ -f .env ]]; then
   echo ".env present"
   echo "Remove? y/n"
   read YES
   case "$YES" in
         [yY])
           rm .env
           ;;
        *)
           exit 1
           ;;
    esac
fi

echo "Enter info for env"
echo "Enter email address"
read EMAIL
echo $EMAIL
UN="$(echo $EMAIL | awk -F@ '{print $1}')"
echo "Password please"
read PASSWORD
cp .env.example .env
gsed -i "s/{{EMAIL}}/$EMAIL/" .env
gsed -i "s/{{PASSWORD}}/$PASSWORD/" .env
gsed -i "s/{{USERNAME}}/$USERNAME/" .env
gsed -i "s/{{API_VERSION}}/v1.0.0/" .env
