
# We clean the work environment -------------------------------------------
  rm(list = ls())

# Shortcuts ---------------------------------------------------------------
  # Ctrl + shift + n  : new script
  # ctrl + s          : save
  # ctrl + shift + r  : new section
  # ctrl + shift + p  : show command palette
  # Alt  + shift + k  : keyboard Shortcuts Help
  # ctrl + shift + m  : %>% 
  # Alt  + q          : @
  # Alt  + +          : ~
  # ...

# Install packages --------------------------------------------------------
  #install.packages("readxl")
  #install.packages("ggplot2")
  #install.packages("deSolve")
  #install.packages("nortest")
  #install.packages("tseries")
  #install.packages("FinTS")
  #install.packages("RcmdrMisc")
  #install.packages("pastecs")
  #install.packages("xts")
  #install.packages("lattice")
  #install.packages("Hmisc")

# load libraries ----------------------------------------------------------
  library(readxl) 
  library(ggplot2)
  library(deSolve)
  library(nortest)
  library(tseries)
  library(FinTS)
  library(RcmdrMisc)
  library(pastecs)
  library(xts)
  library(lattice)
  library(Hmisc)

# Create folders from Rstudio ---------------------------------------------
  #dir.create("1.slides")
  #dir.create("2.scripts")
  #dir.create("3.raw_data")
  #dir.create("4.documentation")
  #dir.create("5.processed_data")
  #dir.create("6.results")
    #dir.create("6.results/6.1.tables")
    #dir.create("6.results/6.2.figures")
  #dir.create("7.analysis")
  
# import data -------------------------------------------------------------
  str(iris)
  head(iris, n = 3) # First three rows
  tail(iris, n = 3)# Last three rows 
  iris[c(1:3,148:150),3:5] # First and last rows, only 3 columns
  iris$Sepal.Length # Get one variable and print as vector
  iris$Species # Get one variable and prit as vector
  
  iris <- 'An iris is a beautiful flower.'
  str(iris)
  data(iris) # explicitly reload the data set
  str(iris)

# Tables ------------------------------------------------------------------
  table(iris$Species) # Make a table of values 
  table(iris$Sepal.Length) # Make a table of values
  table(iris$Sepal.Length > 6.0)
  table(cut(iris$Sepal.Length,breaks = 2:10))
  table(cut(iris$Sepal.Length,breaks = 2:10,right = FALSE))
  
# Histogram ---------------------------------------------------------------
  histogram(~ Sepal.Length, data = iris, type = "density",
            breaks = c(4,5,5.5,6,6.5,7,8,10))
  histogram(~ Sepal.Length | Species, data = iris)
  histogram(~ Sepal.Length | Species, data = iris,
             subset = Species == "virginica")
  
  histogram(~ Sepal.Length | Sepal.Width, iris)
  histogram(~ Sepal.Length | equal.count(Sepal.Width, number = 4), iris)
  
  plot <- histogram(~ eruptions,faithful,n = 20)
  show(plot)
  
# Mean, median ------------------------------------------------------------
  mean(iris$Sepal.Length)
  median(iris$Sepal.Length)
  
  require(Hmisc) # load Hmisc package
  summary(Sepal.Length ~ Species,iris)
  summary(Sepal.Length ~ Species,iris,fun = median) # median instead
    
  mean(faithful$eruptions)
  median(faithful$eruptions)
  stem(faithful$eruptions)  
  
# Measures of Dispersion --------------------------------------------------
  quantile((1:10)^2)
  quantile((1:10)^2, type = 5)
  

# Example -----------------------------------------------------------------
  histogram <- ggplot(data = iris, mapping = aes(x = Sepal.Length)) +
    geom_histogram(binwidth = 0.5, fill = "blue", color = "black") +
    labs(title = "Histograma de Sepal Length", x = "Sepal Length", 
         y = "Frecuencia")
  ggsave(filename = "6.results/6.2.figures/fig1.pdf", 
         plot = histogram, width = 8,
         height = 6, dpi = 300)
  

  
