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
echo -ne '#####                     (33%)\r'
git commit -m "$message"
echo -ne '#############             (66%)\r'
git push
echo -ne '#######################   (100%)\r'
echo -ne '\n'

