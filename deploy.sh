#!/usr/bin/env sh

# abort on errors
set -e

# Remove prev build
rm -rf docs/

# build
npm run build

# navigate into the build output directory
cd ./docs

# if you are deploying to a custom domain
# echo 'unicum.ru' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:unicum-spb/unicum-spb.github.io.git master

cd ../

rm -rf ./docs
echo 'Deployed'
