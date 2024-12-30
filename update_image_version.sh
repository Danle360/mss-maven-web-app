#!/bin/bash
imageVersion="danle360/mss_snow_prod_web_app:v$BUILD_NUMBER"
sed -i "s#image_version_update#${imageVersion}#g" maven_web_app_manifest_file.yml
cat maven_web_app_manifest_file.yml |grep  'danle'
