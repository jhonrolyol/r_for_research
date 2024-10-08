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
  # 2.- Script used in chapter 02
    ## 2.1.- Example_2_3
    ## 2.2.- Example_2_3_2
    ## 2.3.- 
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
        

  ## 2.3.- Example_2_3_3 --------------------------------------------------
    data(ceosal1, package = "wooldridge")
    
    # OLS regression 
    CEOregres <- lm(salary ~ roe, data = ceosal1)
    names(CEOregres)
    
    # Scatter plot (restrict y axis limits)
    with(ceosal1, plot(roe, salary, ylim = c(0, 4000)))
    
    # Add OLS regression line
    abline(CEOregres)
        

  ## 2.4.- Examen_2_4 -----------------------------------------------------
    data(wage1, package = "wooldridge")

    # OLS regression 
    lm(wage ~ educ, data = wage1)
    
    model1 <- lm(wage ~ educ, data = wage1)
    summary.lm(model1)
        
    
    
    
    
    
    


