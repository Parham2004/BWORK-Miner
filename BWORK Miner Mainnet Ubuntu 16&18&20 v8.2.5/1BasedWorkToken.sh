#!/usr/bin/env bash


#Check for dotnet   # Verify installation
   
if ! command -v dotnet &> /dev/null
then
    echo "dotnet 5.0 is not found or not installed."
    echo "Installing dotnet 5.0..."

    # Add Microsoft package signing key and repository
    sudo dpkg -i packages-microsoft-prod$(lsb_release -rs).deb
    sudo apt-get update; \
    sudo apt-get install -y apt-transport-https && \
    sudo apt-get update && \
    sudo apt-get install -y dotnet-sdk-5.0

    # Verify the installation
    dotnet --version

    echo "dotnet 5.0 is installed. Rerun the script to start."
else

    dotnet_version=$(dotnet --version)
    if [[ $dotnet_version == 5.* ]]
    then
    	echo "dotnet 5.0 is installed dont worry about installiing it"
    else
	echo "Installing dotnet 5.0 because it isnt installed"
	
	
	
	
	echo "dotnet 5.0 is not found or not installed."
	echo "Installing dotnet 5.0..."

	# Add Microsoft package signing key and repository
	sudo dpkg -i packages-microsoft-prod$(lsb_release -rs).deb
	sudo apt-get update; \
	sudo apt-get install -y apt-transport-https && \
	sudo apt-get update && \
	sudo apt-get install -y dotnet-sdk-5.0

	# Verify the installation
	dotnet --version

	echo "dotnet 5.0 is installed. Rerun the script to start."

    
    
    
    
	exit 1
    fi
fi


while : ; do
  dotnet BasedWorkToken.dll
  [[ $? -eq 22 ]] || break
done

