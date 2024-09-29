#------------------------------------------------------------------------------#
#
#                           ECONOMETRICS WITH R
#
#                            Introduction
#                    ..............................
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


# Outline -----------------------------------------------------------------
  # Install packages
  # Libraries
  # Create folders from Rstudio
  # 1.- Script used in chapter 01
    ## 1.1.- R as a calculator
    ## 1.2.- Install packages
    ## 1.3.-Objects
    ## ...

# Install packages --------------------------------------------------------

# load libraries ----------------------------------------------------------
 
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


# 1.- Script used in chapter 01 -------------------------------------------

  ## 1.1.- R as a calculator ----------------------------------------------
    1 + 1
    5*(4-1)^2  
    sqrt(log(10))


  ## 1.2.- Install packages -----------------------------------------------
    # This R script download and installs all packages used at some point.
    # It needs to be run once for each computer / user only 
    
    install.packages(c("AER","car","CensReg", "dplyr", "dummies",
                       "dynlm", "effects", "ggplot2", "lmtest", "maps",
                       "mfx", "orcutt", "plm", "quantmod", "sandwich",
                       "quantreg", "rio", "rmarkdown", "sampleSelection",
                       "stargazer", "survival", "systemfit", "truncreg",
                       "tseries", "urca", "xtable", "vars", "WDI", "wooldridge",
                       "xts", "zoo"))

  ## 1.3.- Objects  -------------------------------------------------------
  ## 1.4.- Vectors --------------------------------------------------------
  

  ...



  ## 1.50.- Simulation inference figure -----------------------------------
  
  
  
  
  
   
  
  

