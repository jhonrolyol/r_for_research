#------------------------------------------------------------------------------#
#
#                           ECONOMETRICS WITH R
#
#                 Multiple Regression Analysis: Estimation
#          ........................................................
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
  # 3.- Script used in chapter 03
  ## 3.1.- 
  ## 3.2.- 
  ## 3.3.- 
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

# 3.- Script used in chapter 03 -------------------------------------------
  

  ## 3.1.- Example_3_1 ----------------------------------------------------
    data(gpa1, package = "wooldridge")
  
    # Just obtain parameter estimates
    lm(colGPA ~ hsGPA + ACT, data = gpa1)
    
    # Store results under"GPAres" and display full table
    GPAres <- lm(colGPA ~ hsGPA + ACT, data = gpa1)
    summary(GPAres)
    summary.lm(GPAres)
    
  ## 3.2.- Example_3_2 ----------------------------------------------------
    data(wage1, package = "wooldridge")
        
    # OLS regression
    summary(lm(log(wage) ~ educ + exper + tenure, data = wage1))
    
  







