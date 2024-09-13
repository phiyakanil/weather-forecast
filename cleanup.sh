#!/bin/bash

# List of files and directories to remove
items=(
    "FileUpload"
    "FileUploadwithModelandPreview"
    "GettingStartedWithIdentityServer4.ASPNETCore"
    "IDServer4MqttApiClientAspNetCore"
    "MvcUnit"
    "OCRwithTesseract"
    "ProjectsAndContainers"
    "README.md"
    "WebApp1CoreMVC"
    "WebApp5CoreWebAPI"
    "WebApp5Identity"
    "WebApp6UnitTestsandIdentity"
    "WebApp6WebAPI2"
    "WebAppMvcIdentity"
    "WebApplication1"
    "WebApplication2"
    "WebApplication3"
    "WebApplication5DemoDTjs"
    "WebFormSiteOracleDB"
    "template_ASPNET_WEB_APP"
)

# Iterate over the list and remove each item
for item in "${items[@]}"; do
    if [ -e "$item" ]; then
        rm -rf "$item"
        echo "Removed $item"
    else
        echo "$item does not exist"
    fi
done

echo "Cleanup completed. Only WeatherForecast should remain."
