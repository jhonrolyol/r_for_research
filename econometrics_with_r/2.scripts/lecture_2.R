#------------------------------------------------------------------------------#
#
#                           ECONOMETRICS WITH R
#
#                       The Simple Regression Model
#               ..........................................
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
  
# 2.- Script used in chapter 02 -------------------------------------------

  ## 2.1.- Example_2_3 ----------------------------------------------------
    data(ceosal1, package = "wooldridge")
    attach(ceosal1)
    
    # Ingredients to the OLS formulas
    cov(roe, salary)
    var(roe)    
    mean(salary)    
    mean(roe)    
    
    # Manual calculation of OLS coefficients 
    (b1hat <- cov(roe, salary) / var(roe))
    (b0hat <- mean(salary) - b1hat*mean(roe))
    
    # "detach" the data frame 
    detach(ceosal1)
        
  ## 2.2.- Example_2_3_2 --------------------------------------------------
    data(ceosal1, package = "wooldridge")
    
    # OLS regression 
    lm(salary ~ roe, data = ceosal1)
    lm(salary ~ roe - 1, data = ceosal1) # omitting intercept
    lm(salary ~ 0 + roe, data = ceosal1) # omitting intercept
    
    names(ceosal1)
    lm(salary ~ roe + sales, data = ceosal1)
    lm(salary ~ roe + sales - 1, data = ceosal1)
        
    
