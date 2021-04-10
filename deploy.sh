rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "first commit" &&
git branch -M master &&
git remote add origin git@github.com:waynefu2020/-orange-ui-website.git &&
git push -u origin master -f &&
cd ..
echo https://waynefu2020.github.io/-orange-ui-website/index.html