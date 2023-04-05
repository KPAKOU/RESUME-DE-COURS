#*********************resumé de cours sur les structures de contrôle***************


#*****IF******
a<-4
if(a%%2==0){
  print(paste(a,"est un entier pair"))
}else{print(paste(a,"est un entier impair"))
}

#if...else if...else
# verifions si n entier x donné est nul,positif,négatif
x<--6
if(x>0){
  print(paste(x,"is a positive number"))
}else if (x<0){
  print(paste(x,"is a negative number"))
}else{print(x,"is nul")}

#ifelse()
#verifions si les entiers dans le vecteur x sont positive et pair
x<-c(5,6,7,-7,-8,9,12)
ifelse(x>0 & x%%2==0 ,"vrai","faux")

#while
#calculer la somme des nombres pairs entre 1 et 10
i=1
somme=0
while(i<=10){
  if( i%%2==0){
    somme=somme+i  
  }
  i=i+1
}
print(somme)
#affichons les entiers pairs entre 1 et 10
number=1
while(number <= 10) {
  
  if (number %% 2!= 0) {  
    number = number + 1
    next
  }
  print(number)
  number = number + 1  
}
#Boucle for
x<-c(5,7,9,12,45,6)
for(i in x)
  if(i%%2==0){
    print(i)
  }
#for break
for(i in x){
  if(i==12){
    break
  }
    print(i)
}
#for imbriqué
x=c(1,2,3,4)
y=c(1,2)
for(i in x){
  for (j in y){
    print(paste(i,j))
  }
}

#break et next
x=c(1,2,3)
y=c(1,2,3)
for(i in x){
  for (j in y){
    if(i==2 & j==3){
      break # sort de la boucle lorsque i==2 et j==3
    }
    print(paste(i,j))
  }
}
#repeat ... break
x = 1
repeat {
  
  print(x)
  if (x > 4) {
    break # arret de la boucle lorsque x est superieur à 4
  } 
  x = x + 1
  
}
#******************************Fonctions***************************
#*Ecrivons la fonction racine carrée
racinecarre<-function(x){
  print(paste("la racine carrée de",x,"est",(x)^(1/2)))
}
racinecarre(9)
#utilisation des valeurs de retour
racinecarre<-function(x){
  return(x^(1/2))
}
print(paste("la racine carrée de",67,"est",racinecarre(67)))

#utilisation d'une fonction dans une fonction
#fonction addition
a=2
b=9
add<-function(a,b){
  return (a+b)
}
print(paste("la racine carrée de",add(a,b),"est",racinecarre(add(a,b))))


##*******************************************************************************
##***********STRUCTURES DE DONNEES***********************************************
#Chaines
#longueur de mots
nchar("bonjour") #out put 7
#concatenation
paste("bonjour","tout le monde")
#cmparaison des chaines
print("bonjour"=="Bonjour")
#touper(onvertit en majuscule),tolower
toupper("bonjour")
tolower("BONJOUR")
 
##************vecteurs
#vecteurs et indexation
x<-c("ama","ali","afi","toto")
print(x[3])
#modification d'un element
x[3]<-"maman"
print(x)
#longueur d'un vecteur
length(x)
#*****************MATRICES***********************
matrix1 <- matrix(c("Sabby", "Cathy", "Larry", "Harry"), nrow = 2, ncol = 2)

print(matrix1)
#acces au deuxieme element de la matrice
cat("\nl'element selection:",matrix1[1,2])
#accès à toute une colonne
cat("\n deuxieme colonne:",matrix1[,2])
#verification d'existence d'element dans la matrice
"Cathy"%in%matrix1
#*****************************LISTES********************
y<-list("Sabby", "Cathy", "Larry", "Harry")
#modification d'un élement
y[2]<-"Ali"
y
#suppression d'un élément d'une list
y[-2]
#ajout
y[2]<-"Ali"
y
#longueur d'une liste
cat("la longueur de la liste est:",length(y))
#boucle sur les éléments d'une liste

for (item in y) {
  print(item)
}
#*********************ARRAY**********************
#création
array1 <- array(c(1:12), dim = c(2,3,2))
print(array1)#création deux matrices de dimension 2 par 3
#accès aux elements de la matrice
cat("\nelement desiré:", array1[1, 3, 2])#element de la premiere ligne et troisième colonne de la deuxieme matrice
#accès à la seconde ligne de la première matrice
cat("\nelements desiré:", array1[c(1), , 2])
#nombres d'élements
cat("\n le nombre d'elements est:",length(array1))

#********************TRAME DE DONNES*********************
#*création
donnes<-data.frame(name=c("Juan","ali","Afi"),age=c(15,23,17),classe=c("ISE1","ISE2","ISE3"))
print(donnes)
#accès aux elements de name
print(donnes$name)
print(donnes[1])
#concatenation
donnes1<-data.frame(sport=c("Tenis","Football","Tenis"))
DONNES<-cbind(donnes,donnes1)
DONNES
#Longueur d’une trame de données dans R
cat("Total Elements:", length(DONNES))
##*********************FACTEURS*********************
#creation
# create a factor
name <- factor(c("ali", "afi", "jeanne", "abalo", "jean"))
#modification
levels(name) <- c(levels(name), "Kpakou")
name[4]<-"Kpakou"
print(name)

#***************************VISUALISATION DES DONNEES**************
#histogramme()
temperatures <- c(67 ,72 ,74 ,62 ,76 ,66 ,65 ,59 ,61 ,69 )
result<-hist(temperatures)
print(result)
#ajout des titres des axes
result <- hist(temperatures,
               main = "Histogram of Temperature",
               xlab = "Temperature in degrees Fahrenheit" 

               col = "blue",
               xlim = c(50,100),
               ylim = c(0, 5))
print(result)
##DIAGRAMME CIRCULAIRE
library(plotrix)

expenditure <- c(600, 300, 150, 100, 200)

result <- pie3D(expenditure,
                main = "Monthly Expenditure Breakdown",
                labels = c("Housing", "Food", "Cloths", "Entertainment", "Other"),
                col = c("red", "orange", "yellow", "blue", "green")
)

print(result)
#*******************BOXPLOT**********************
#*utilisation des données mtcars
View(mtcars)
#création d'un boxplot 
boxplot(mtcars$mpg)
#creation de boxplot mettant en relation le kilometrage en fonction du nombres de cylindres
boxplot(mpg ~ cyl, data = mtcars,
        main = "Mileage Data Boxplot",
        ylab = "Miles Per Gallon(mpg)",
        xlab = "No. of Cylinders",
        col = "yellow")

##***************DIAGRAMME A BANDE**********************
##*données airquality
View(airquality)
#création des graphiques
stripchart(airquality$Ozone)
stripchart(airquality$Wind)
#graphiques à bandes multiples
liste<-list("Ozone"=airquality$Ozone,"vent"=airquality$Wind)
stripchart(liste)
#mettons les titres des axes
stripchart(liste,
           main="Mean ozone in parts per billion at Roosevelt Island",
           xlab="Parts Per Billion",
           col= c("orange","brown"),
           method = "jitter")


#*********************FONCTION DE TRACE R******************
#*Nuage des points
x<-c(1,5,6,7)
y<-c(2,3,4,6)
plot(x,y)
#tracé d'une ligne
plot(1:5,type="l",main="droite",
     xlab="l'axe des abscisses",
     ylab="l'axe des ordonnées")
##Fonction trigonometriques
x=seq(-pi,pi,0.1)
y=tanh(x)
plot(x,y)
#####*******************R Lire et écrire des fichiers CSV**************
#lecture
chemin="E:\\KPAM ISEP 2\\Semestre 4\\Programmation R\\Cours R 2023"
file=paste0(chemin,"/Chefmenage.csv")
data<-read.csv2(file)
View(data)
#nombre de lignes et colonnes
cat("Total Columns: ", ncol(data))#nombre de colonnes
cat("Total rows: ", nrow(data))#nblignes
#age min et agemax
agemin<-min(data$age)
agemax<-max(data$age)
print(agemin)


#******************R JEUX DE DONNEES***************
#utilisons les jeux de données airquality
#affichage
print(airquality)
#informations sur les données airquality
cat("\nRow:",nrow(airquality))#nbre ligne
cat("\ncolumn:",ncol(airquality))#nbcolonnes
cat("\nnames of variables:",names(airquality))#noms des variables
#affichage des variables
print(airquality$Wind)
#résumé statistique de la variable "Ozone
summary(airquality$Ozone)

#*******************Rmin() et Rmax()******************
x<-c(2,7,8,10,6)
y<-c("g","b","d","f")
min(x) #output 2
max(y)#output "b"
#recherche avec les NA
numbers <- c(2, NA, 6, 7, NA, 10)
min(numbers)
max(numbers)#output NA
max(numbers,na.rm = TRUE)
#******************Moyenne,mediane,mode
#creation d'un vecteur
x<-23:67
mean(x)
median(x)
#ecrivons une fonction pour determiner le mode
y=c(12,12,23,24,12)
mode = function() {
  
  # calculate mode of marks  
  return(names(sort(-table(y)))[1])
}
mode()

#****************CALCUL DES PERCENTILES*****************
x<-c(12,6,67,14,23,67)
print(quantile(x,0.50))#mediane
print(quantile(x,c(0.4,0.6,0.5,0.9,0.8)))#affichage du 40e,60e;50e;90e,80e percentiles

#******************DATE**************************
#Heure et date actuelle
Sys.Date()
Sys.time()
#utilisation du package lubridate
library(lubridate)
#heure et date acteuelle
now()
#Extraction des années mois,jours
library(lubridate)
dates<-c("2023-03-11", "2014-04-19", "2017-03-08")
year(dates)
month(dates)
###************************CLASSE R S3***********************
#création d'une classe
eleve <- list(name = "Peter", age = 21, classe = "ISEP1")
class(eleve)<-"Eleve_info"
eleve  #appel
#obtention des fonctions géneriques
Methods()
#**********************CLASSE R S4********************
#*#definissions de la classe S4 dans R
setClass("eleveinfo", slots=list(name="character", age="numeric", classe="character"))
#création d'un objet S4
eleve <- new("eleveinfo",name = "Peter", age = 21, classe = "ISEP1")
#nom de classe"eleveinfo"
eleve #affichage
#accès à l'emplacement d'un element d'une classe par exemple le nom de la classe elevinfo
eleve@name
eleve@classe
# modificcation de la classe par exemple
eleve@classe<-"ISE3"
eleve #affichage
#obtention des fonctions géneriques
showMethods()
