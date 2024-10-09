#------------------------------------------------------------------------------#
#
#                           ECONOMETRICS WITH R
#
#              Basic Regression Analysis with Time Series Data
#         ..........................................................
#
#                          Jhon R. Ordoñez 
#                      (rolyordonezleon@gmail.com)
#                             May 6, 2024
#
#------------------------------------------------------------------------------#

# We clean the work environment -------------------------------------------
  rm(list = ls())
  getwd()
  
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
  # 10.- Script used in chapter 10
  ## 10.1.- 
  ## 10.2.- 
  ## 10.3.- 
  ## ...

# Install packages --------------------------------------------------------
  install.packages("ggplot2")
  install.packages("zoo")
# load libraries ----------------------------------------------------------
  library(ggplot2)
  library(zoo)
  
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

# 10.- Script used in chapter 10 -------------------------------------------

# 10.1.- Example_10_2 -----------------------------------------------------
  data(intdef, package = "wooldridge")
  # Linear regression of static model
  summary(lm(i3 ~ inf + def, data = intdef))
 

# 10.2.- Example_Barium ---------------------------------------------------
  data(barium, package = "wooldridge")
  names(barium)
  attach(barium)
  # Imports from china: variable "chnimp" from data frame "data"
  # Monthly time series starting Feb. 1978
  impts <- ts(chnimp, start = c(1978,2), frequency = 12)
  # Plot time series
  plot(impts)
     # Another option
      month <-  seq(from = as.Date("1978-02-01"), 
                    to   = as.Date("1988-12-01"), by = "month")
      df2 <- cbind(month, barium)
      
      ts1 <- ggplot(df2, aes(x = month, y = chnimp)) + 
        geom_line(color = "blue") +
        labs(title = "Time Serie of CHNIMP", 
             x = "Date", y = "CHNIMP")
     
      ggsave(filename = "6.results/6.2.figures/fig1_ts.pdf", plot = ts1,
             width = 8, height = 6, dpi = 300)
     

# 10.3.- Example_zoo ------------------------------------------------------
  data(intdef, package = "wooldridge")
  # Variable "year" as the time measure
    intdef$year
  # Define "zoo" object containing all data, time measure = year
    zoodata <- zoo(intdef, order.by = intdef$year)
  # Time series plot of inflation
    plot(zoodata$i3)
   
  
  


