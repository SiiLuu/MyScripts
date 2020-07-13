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
echo "<!DOCTYPE html>°°<html>°°£<!-- head -->°£<head>°££<meta charset=\"utf-8\">°££<title>BuBuche</title>°°££<!-- css -->°££<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bulma@0.9.0/css/bulma.min.css\">°££<link rel=\"stylesheet\" href=\"../styles/main.css\">°££<!-- css -->°°££<!-- font -->°££<link href=\"https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap\" rel=\"stylesheet\">°££<script src=\"https://kit.fontawesome.com/ce04972de4.js\" crossorigin=\"anonymous\"></script>°££<!-- font -->°°££<!-- meta SEO -->°£££<meta name=\"description\" content=\"Ce site est un outil dont un bucheron dispose pour se faire connaître et vendre au mieux sont bois grâce à internet.\">°£££<meta name=\"keywords\" content=\"bois, chauffage, buche, livraison, domicile, arbre, maison\">°££<!-- meta SEO -->°°££<meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1\">°£</head>°£<!-- head -->°°£<!-- body -->°£<body>°°££<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>°££<script src=\"../js/main.js\"></script>°£</body>°£<!-- body -->°°</html>°" >> index.html
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
