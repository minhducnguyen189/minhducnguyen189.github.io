#!/bin/bash

echo 'Building source code'
echo -ne '[](0%)\r'
sudo jekyll build --config=_config.yml
echo -ne '[##########](10%)\r'
echo 'Setting permission for generated source'
sudo chmod 777 _site -R
echo -ne '[####################](20%)\r'
echo 'copying generated source'
cp -R -T _site /home/duc/projects/minhducnguyen189.github.io -f
echo -ne '[########################################](40%)\r'
echo 'Navigate to minhducnguyen189.github.io'
cd /home/duc/projects/minhducnguyen189.github.io
echo 'Deploying'
echo "Enter commit message: "
read message
echo -ne '[############################################################](60%)\r'
git add .
echo -ne '[################################################################################](80%)\r'
git commit -m "$message"
echo -ne '[##########################################################################################](90%)\r'
git push
echo -ne '[####################################################################################################](100%)\r'
echo -ne '\n'

