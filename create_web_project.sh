##
## Make a litle script for initialise a web project
##

mkdir $1
cd $1
git init
git remote add github $2

mkdir src
mkdir assets
cd ./src

mkdir html
cd ./html
touch index.html
echo "<!DOCTYPE html>°<head>°£<meta charset=\"utf-8\">°£<link rel=\"stylesheet\" href=\"../styles/main.css\">°£<title>...</title>°</head>°°<body>°°</body>°" >> index.html
cat index.html | sed -i "s/°/\n/g" index.html
cat index.html | sed -i "s/£/\t/g" index.html
cd ..

mkdir styles
cd ./styles
touch main.scss
touch _variables.scss
echo "@import './_variables';" >> main.scss
cd ..

mkdir js
cd ./js
touch main.js
cd ..

cd ..
git add --all
git commit -m "[ADD] initialise the web project."
git push github master
