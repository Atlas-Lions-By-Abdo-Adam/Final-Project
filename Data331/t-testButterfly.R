# import necessary libraries
library(tidyverse)
library(dplyr)
library(readxl)
library(lubridate)
library(stringr)

# Workspace / setwd
rm(list=ls())
setwd("~/Documents/Data 331/Cleaned Data")


# importing the Excel files from the folder :
df_cleanLWA <- read_excel("Cleaned Data LWA.xlsx", sheet=1)
df_complete <- read_excel("CompletePierisData_2022-03-09.xlsx", sheet=1)

# renaming the core column of clean data :
names(df_cleanLWA) <- str_replace_all(names(df_cleanLWA), " ", "")

names(df_cleanLWA)[names(df_cleanLWA) == "coreID"] <- "coreid"
names(df_cleanLWA)[names(df_cleanLWA) == "sex"] <- "SexUpdated"
names(df_cleanLWA)[names(df_cleanLWA) == "LWlength"] <- "LWingLength"
names(df_cleanLWA)[names(df_cleanLWA) == "LWwidth"] <- "LWingWidth"
names(df_cleanLWA)[names(df_cleanLWA) == "LWapexA"] <- "LBlackPatchApex"
names(df_cleanLWA)[names(df_cleanLWA) == "RWlength"] <- "RWingLength"
names(df_cleanLWA)[names(df_cleanLWA) == "RWwidth"] <- "RWingWidth"
names(df_cleanLWA)[names(df_cleanLWA) == "RWapexA"] <- "RBlackPatchApex"

# aligning column naming conventions in the event of a join
class(df_complete$coreid) = "character"
class(df_complete$SexUpdated) = "character"
class(df_complete$LWingLength) = "double"
class(df_complete$LWingWidth) = "double"
class(df_complete$LBlackPatchApex) = "double"
class(df_complete$RWingLength) = "double"
class(df_complete$RWingWidth) = "double"
class(df_complete$RBlackPatchApex) = "double"

# Before the t-test, establishing a functioning df and eliminating NA.
df_working <- df_complete %>%
  dplyr::select("coreid", "SexUpdated", "LWingLength", "LWingWidth", "RWingLength", "RWingWidth") %>%
  na.omit(df_working) 

# t-test
# choose columns, we will do 2 separate t tests; one for length and one for width
lWingLen <- df_working$RWingLength
rWingLen <- df_working$RWingWidth
lWingWid <- df_working$LWingLength
rWingWid <- df_working$LWingWidth

# normalizing rnorm(n=sample size, mean, std)
lWingLen <- rnorm(length(lWingLen), mean(lWingLen), sd(lWingLen))
rWingLen <- rnorm(length(rWingLen), mean(rWingLen), sd(rWingLen))
lWingWid <- rnorm(length(lWingWid), mean(lWingWid), sd(lWingWid))
rWingWid <- rnorm(length(rWingWid), mean(rWingWid), sd(rWingWid))

# length t test
tsLen <- t.test(lWingLen,rWingLen,paired=TRUE)
tsWid <- t.test(lWingWid,rWingWid,paried=TRUE)
probs = c(.9, .95, .99)

# display t-test results
tsLen
tsWid

