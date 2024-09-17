#------------------------------------------------------------------------------#
#           National University of San Cristóbal de Huamanga                      
#       Faculty of Economic, Administrative and Accounting Sciences
#                  Professional School of Economics
#
#
#                              LEARNING R
#
#                         A Scientific Calculator
#                .......................................
#
#                          Jhon R. Ordoñez 
#                      (rolyordonezleon@gmail.com)
#                             May 6, 2024
#
#------------------------------------------------------------------------------#

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
  install.packages("readxl")
  install.packages("ggplot2")
  install.packages("deSolve")
  install.packages("nortest")
  install.packages("tseries")
  install.packages("FinTS")
  install.packages("RcmdrMisc")
  install.packages("pastecs")
  install.packages("xts")
  install.packages("lattice")
  install.packages("Hmisc")

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
  dir.create("1.slides")
  dir.create("2.scripts")
  dir.create("3.raw_data")
  dir.create("4.documentation")
  dir.create("5.processed_data")
  dir.create("6.results")
  dir.create("6.results/6.1.tables")
  dir.create("6.results/6.2.figures")
  dir.create("7.analysis")
  

# Your first program ------------------------------------------------------
  
  

