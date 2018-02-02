## !/usr/bin/env Rstudio 1.1.419
## -*- coding: utf-8 -*-
## Coursera JHU Data Science Series
## Lecture 4 Exploratory Data Analysis

setwd("/Users/yangchen/Desktop/Coursera/Data_Sci_Coursera/3_Explore_Analysis")
getwd()

library(data.table)

# Basic info
StartDate <- "2007-02-01"
EndDate <- "2007-02-02"
FormatDate <- "%d/%m/%Y"
FormatDateTime <- "%Y-%m-%d %H:%M:%S"

# Read the data file
file <- "household_power_consumption.txt"
energe <- read.table(file, sep = ";", header = TRUE, na.strings = "?")
str(energe)
head(energe)

energe$Date <- as.Date(energe$Date, format = FormatDate)
#energe$Time <- strptime(energe$Time, format = FormatDateTime)

# Subset the data by specific data range
energe_use <- energe[energe$Date >= StartDate & energe$Date <= EndDate, ]
str(energe_use)

# Convert the Time column into Time class
energe_use$Time <- strptime(paste(energe_use$Date, energe_use$Time), format = "%Y-%m-%d %H:%M:%S")
str(energe_use)


