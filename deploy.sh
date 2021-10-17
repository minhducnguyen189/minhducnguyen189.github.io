#!/bin/bash

echo 'Building source code'
sudo jekyll build --config=_config.yml
echo 'Setting permission for generated source'
sudo chmod 777 _site -R
echo 'copying generated source'
cp -R -T _site /home/duc/projects/minhducnguyen189.github.io -f
echo 'Navigate to minhducnguyen189.github.io'
cd /home/duc/projects/minhducnguyen189.github.io
echo 'Deploying'
echo "Enter commit message: "
read message
git add .
git commit -m "$message"
git push
echo 'the deployment has just been done'

