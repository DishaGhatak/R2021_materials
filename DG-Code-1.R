
# Header ------------------------------------------------------------------

# Author: Disha Ghatak
# GitHub: https://github.com/DishaGhatak
# Date: August 3rd, 2024
# Script Name: Script for Session 1
# Script Description: We learn about headers, installing packages, loading libraries, 
#                     helper functions, source files, loading data, shortcuts in R, 
#                     math operations, modulo operators, functions, objects, 
#                     vectors, lists, factors, data frames!

# Install Packages ----------------------------------------------------------

install.packages("tidyverse")
library(tidyverse)


install.packages("pacman")

pacman::p_load(
  tidyverse,
  patchwork,
  rio,
  data.table
)

# Load Libraries ----------------------------------------------------------

# Helper Functions --------------------------------------------------------

# Source Files ------------------------------------------------------------

# Load the data -----------------------------------------------------------

# Section 1 ------------------------------------------------------------------

## 1.1 Shortcuts in R ---------------------------------------------------------

# New document: ctrl+shift+n
# To comment/uncomment lines: ctrl+shift+c
# To run one or multiple lines of code: ctrl+enter
# To run the whole file: ctrl+shift+enter

# 1.2 CalculatoR - See OG file ------------------------------------------------

# 1.3 Modulo Operators --------------------------------------------------------

# 1.4 Floating Points ---------------------------------------------------------

# 1.5 Functions ---------------------------------------------------------------

 f <- function(x) {
                    (2 * x + 3) / sqrt(3)
                 }
     f(3)

     
# 1.6 Making Objects: Assignment (Operators) ----------------------------------
     
# 1.7 Vectors -----------------------------------------------------------------
  
     # Indexing Vectors
     
# 1.8 Lists -------------------------------------------------------------------

     list_a <- list(
       5:7,
       "I'm a string",
       c(TRUE, TRUE),
       c(1.23, 4.20)
     )
     
     
     list_a[3] # This returns a list with element three.
     
     
     list_a[[4]] # We need double brackets to index a list element.
     
     
     # Index within a list element:
     
     list_a[[4]][2]
     
     # For named lists, we can index with $:
     
     names(list_a) <- c("a", "b", "c", "d")
     # Note: We can also name elements directly: list(x = 1, y = 2)
     
     list_a$b
     
     
     list_a$d[1]
     
     # Adding a new object-reference,
     # i.e. an element, to a list:
     
     list_a$e <- c("R", "is fun")
     
     
# 1.9 Factors ----------------------------------------------------------------------
     
     backgrounds_char <- c("none", "Stata", "Stata", "Stata", "R") # Student's prog. backgrounds
     
     backgrounds_fac <- factor(backgrounds_char, levels = c("none", "Stata", "R"))
     
     # Or:
     # backgrounds_fac <- factor(c("none", "Stata", "Stata", "Stata", "R"))
     
     class(backgrounds_fac)
     
     typeof(backgrounds_fac)
     
     table(backgrounds_fac)

# 1.10 Data Frames ------------------------------------------------------------------
     
     set.seed(666)
     df_langs <- data.frame(
       background = factor(c(
         "Python",
         "Stata", "Stata", "Stata",
         "R"
       )),
       skill = rnorm(5) # draw 5 random numbers from a normal dist.
     )
     
     View(df_langs)
     
     head(df_langs) # print first few lines of an object (6 by default)
     
     # Indexing
     
     df_langs[2, 2] # Second row of second column
     
     df_langs$background[1]
     
     # Combined with the operators we learned, we can also filter:
     
     df_langs[df_langs$skill < 0, ]
     
     dim(df_langs)
     
     lm(skill ~ background) # the lm object is of type list
     
     m1 <- lm(df_langs$skill ~ df_langs$background) # Or: lm(skill ~ background, data = df_langs)
     summary(m1) # generic function used to produce result summaries of the results of various model fitting functions
     
     
     df_langs_m <- as.matrix(df_langs) # convert data.frame to matrix
     print(df_langs_m)
     
     typeof(df_langs_m[2, 1])
