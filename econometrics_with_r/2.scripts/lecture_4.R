#------------------------------------------------------------------------------#
#
#                           ECONOMETRICS WITH R
#
#                Multiple Regression Analysis: Inference
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

# 4.- Script used in chapter 04 -------------------------------------------

  ## 4.1.- Example_4_3 ----------------------------------------------------
    data(gpa1, package = "wooldridge")
  
    # Store results under "sumres" and display full table
    (sumres <- summary(lm(colGPA ~ hsGPA + ACT + skipped, data = gpa1)))
    
    # Manually confirm the formulas: Extract coefficients and SE
    regtable <- sumres$coefficients
    bhat <- regtable[,1]
    se   <- regtable[,2]
    
    # Reproduce t statistic
    (tstat <- bhat / se)
    
    # Reproduce p-value
    (pval <- 2*pt(-abs(tstat),137))

  ## 4.2.- Example_4_1 ----------------------------------------------------
    data(wage1, package = "wooldridge")
    
    # OLS regression 
    summary(lm(log(wage) ~ educ + exper + tenure, data = wage1))
    



