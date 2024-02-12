# Cloud-Uploader

Using Azure CLI commands in a bash script to allow a user to easily upload to an Azure Storage Blob.<br>




<details>
    <summary><h2>On successful upload, it provides a progress bar.</h2></summary>
    
![bashScriptSuccess](https://github.com/gabriel-r100/Cloud-Uploader/assets/55646808/7d3bade0-28f6-4562-b616-7afe3cbf4d35)

</details>



<details>
    <summary><h2>On an error, it will use the Azure output to advise what the issue may be.</h2></summary>

![bashScriptError](https://github.com/gabriel-r100/Cloud-Uploader/assets/55646808/56284ac3-a29f-42b4-8c0a-04a5f9dddf72)

</details>




## Bash Script

1. Firstly, we want the user to call the script with a file passed in. `./clouduploader <file name>`. If the user fails to do so, we provide a helpful message on the input we are expecting.<br>
![bashScriptWrongInput](https://github.com/gabriel-r100/Cloud-Uploader/assets/55646808/8bf01f7b-5dda-4aae-a82c-7390e4c3e5f8)


2. Once the file is passed in, we save it into a variable named `file_name`
3. After setting up our Azure Subscription, storage account, and storage container; we grab they generated access key and store these values within the script.
4. We can check if the input file exists with the `[ -f $file_name]` command, only if verified will we try to upload.
5. Using the Azure-CLI commands, we upload the provided file.
6. If the file did not exist, we promptly provide an error message and the script ends.
![bashScriptFileNotFound](https://github.com/gabriel-r100/Cloud-Uploader/assets/55646808/23ea92f3-5ee5-4ff0-b46a-fac129cacd92)


    ![bashScriptTemplateStamped](https://github.com/gabriel-r100/Cloud-Uploader/assets/55646808/64f0bd35-3ed2-438f-a5a4-cbedfd673173)
<!--

-->
