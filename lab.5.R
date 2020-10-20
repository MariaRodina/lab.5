renv::init() 
renv::install() 
renv::snapshot()


firstcar<- list(
  name= "toyota",
  control = "mechanical",   
  price="625000",
  color="black"
  )

class(firstcar)<-"first"

print.first<- function(num){
  cat(num$name," ")
  cat("управление:",num$control," ")
  cat("цена:",num$price," ")
  cat("цвет:",num$color," ")
}

methods(,"first")
print.first

secondcar<-list(
  name="ford",
  control="auto",
  price="500000",
  color="white"
)

class(secondcar)<- "second"


print.second<- function(num){
  cat(num$name," ")
  cat("управление:",num$control," ")
  cat("цена:",num$price," ")
  cat("цвет:",num$color," ")
}

methods(,"second")
print.second
  

thirdcar<- list(
  name="mazda",
  control="auto",
  price="1050000",
  color="blue"
)

class(thirdcar)<-"third" 


print.third<- function(num){
  cat(num$name," ")
  cat("управление:",num$control," ")
  cat("цена:",num$price," ")
  cat("цвет:",num$color," ")
}

methods(,"third")
print.third

choise<-function(){
  x<- readline("Какую машину вы хотите?(тойота,форд,мазда):")
  if (x=="1") print.first(firstcar)
  if (x=="2") print.second(secondcar)
  if (x=="3") print.third(thirdcar)
}
choise()

