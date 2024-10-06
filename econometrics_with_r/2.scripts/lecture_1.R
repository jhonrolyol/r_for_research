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
    # Generate object x (no output)
    x <- 5
    
    # Display x & x^2
    x
    x^2
    
    # Generate objects y & z with immediate display using ():
    (y <- 3)
    (z <- y^x)
    
  ## 1.4.- Vectors --------------------------------------------------------
    # Define  a with immediate output through parentheses:
    (a <- c(1,2,3,4,5,6))
    (b <- a + 1)
    (c <- a + b)
    (d <- b*c)
    sqrt(d)
    
  ## 1.5.- Vector-Functions -----------------------------------------------
    # Define vector
    (a <- c(7,2,6,9,4,1,3))
    
    # Basic functions
    sort(a)
    length(a)
    min(a)
    max(a)
    sum(a)
    prod(a)
    
    # Creating special vectors
    numeric(20)
    rep(1,20)
    seq(50)
    5:15
    seq(4,20,2)

  ## 1.6.- Logical --------------------------------------------------------
    # Basic comparisons
    0 == 1
    0 < 1
    
    # Logical vectors
    (a <- c(7, 2, 6, 9, 4, 1, 3))
    (b <- a < 3 | a >= 6)
    
  ## 1.7.- Factors --------------------------------------------------------
    # Original ratings 
    x <- c(3, 2, 2, 3, 1, 2, 3, 2, 1, 2)
    xf <- factor(x, labels = c("bad", "okey", "good"))
    x
    xf 
    
  ## 1.8.- Vector-Indices -------------------------------------------------
  ## 1.9.- Matrices -------------------------------------------------------
    


  ## 1.12.- Data frames ---------------------------------------------------
    # Define one x vector for all
    year <- c(2008, 2009, 2010, 2011, 2012, 2013)
    
    # Define a matrix of y values
    product1 <- c(0, 3, 6, 9, 7, 8)
    product2 <- c(1, 2, 3, 5, 9, 6)
    product3 <- c(2, 4, 4, 2, 3, 2)
    sales_mat <- cbind(product1, product2, product3)
    rownames(sales_mat) <- year
    
    # The matrix looks like this
    sales_mat
    
    # Create a data frame and display it
    sales <- as.data.frame(sales_mat)
    sales
    
  ## 1.13.- Data frames vars ----------------------------------------------
    # Accessing a single variable
    sales$product2
    
    # Generating a new variable in the data frame
    sales$totalv1 <- sales$product1 + sales$product2 + sales$product3
    
    # The same but using "with"
    sales$totalv2 <- with(sales, product1 + product2 + product3)
    
    # The same but using "attach"
    attach(sales)
    sales$totalv3 <- product1 + product2 + product3
    detach(sales)
    
    # Result
    sales
  
  ## 1.14.- Data frames subsets -------------------------------------------
    # Full data frame (from data_frames.r, has to be run first)
    sales
    
    # Subset: all years in wich sales of product 3 were >= 3
    subset(sales, product3 >= 3)
        


