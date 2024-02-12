#! /bin/bash

# If user does not put file name argument, exit script
if [ $# -eq 0 ]; then
	echo "Usage: $0 <file>"
	exit 1
fi

# Get file name from input argument
file_name=$1


# Azure Variables
storage_account_name="<created azure account>"
storage_container_name="<created azure container>"
storage_access_key="<generated access key>"


# Test that the file you are uploading exists and is a normal file before uploading to blob
if [ -f $file_name ]; then
	# Use Azure-CLI commands to upload to blob
	az storage blob upload \
		--account-name $storage_account_name \
		--container-name $storage_container_name \
		--file $file_name \
		--account-key $storage_access_key \
		#Uncomment out 2>$1 if you would like error messages to also be omitted
		>/dev/null # 2>&1
else
	echo "File $file_name not found."
fi
