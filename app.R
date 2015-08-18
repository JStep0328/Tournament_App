# install.packages("shiny")
# install.packages("gsheet")
# install.packages("plyr")
# 

# Load Packages

library(shiny)
library(gsheet)
library(plyr)

# Google Doc URLs

url_data <- "https://docs.google.com/spreadsheets/d/1AhRpSqUq9R2_CGZgzpK8o8qLZ1DeRKL_WZEtFiox4Kw/edit?usp=sharing"

# Load Data, only games that have been played
data <- gsheet2tbl(url = url_data)
data_complete <- data[data$Complete == "Y", ]
# View(data)
# 
# View(data2)

# Setup plot
x <- 0:105
y <- 0:105
plot(x, y, type = "l", col.axis = "white", col.lab = "white", bty = "n",axes = FALSE, col = "white")

# Bracket
# Horizonal Lines
# First Round
?seq
segments(x0 = 0, y0 = 85, x1 = 15, y1 = 85)
segments(x0 = 0, y0 = 75, x1 = 15, y1 = 75)
segments(x0 = 0, y0 = 65, x1 = 15, y1 = 65)
segments(x0 = 0, y0 = 55, x1 = 15, y1 = 55)
# Second round
segments(x0 = 15, y0 = 90, x1 = 30, y1 = 90)
segments(x0 = 15, y0 = 80, x1 = 30, y1 = 80)
segments(x0 = 15, y0 = 60, x1 = 30, y1 = 60)
segments(x0 = 15, y0 = 50, x1 = 30, y1 = 50)
segments(x0 = 15, y0 = 30, x1 = 30, y1 = 30)
segments(x0 = 15, y0 = 20, x1 = 30, y1 = 20)
segments(x0 = 15, y0 = 10, x1 = 30, y1 = 10)
segments(x0 = 15, y0 = 0, x1 = 30, y1 = 0)
# Third Round
segments(x0 = 30, y0 = 85, x1 = 60, y1 = 85)
segments(x0 = 30, y0 = 55, x1 = 60, y1 = 55)
segments(x0 = 30, y0 = 25, x1 = 45, y1 = 25)
segments(x0 = 30, y0 = 5, x1 = 45, y1 = 5)
# Fourth Round
segments(x0 = 45, y0 = 35, x1 = 60, y1 = 35)
segments(x0 = 45, y0 = 15, x1 = 60, y1 = 15)
# Fifth Round
segments(x0 = 60, y0 = 70, x1 = 75, y1 = 70)
segments(x0 = 60, y0 = 25, x1 = 75, y1 = 25)
# Sixth Round
segments(x0 = 75, y0 = 45, x1 = 90, y1 = 45)
segments(x0 = 75, y0 = 5, x1 = 90, y1 = 5, lty = 2)
# Seventh Round
segments(x0 = 90, y0 = 25, x1 = 105, y1 = 25, lty = 2)

# Vertical lines
# First Round
segments(x0 = 15, y0 = 85, x1 = 15, y1 = 75)
segments(x0 = 15, y0 = 65, x1 = 15, y1 = 55)
# Second Round
segments(x0 = 30, y0 = 90, x1 = 30, y1 = 80)
segments(x0 = 30, y0 = 60, x1 = 30, y1 = 50)
segments(x0 = 30, y0 = 30, x1 = 30, y1 = 20)
segments(x0 = 30, y0 = 10, x1 = 30, y1 = 0)
# Third Round
segments(x0 = 60, y0 = 85, x1 = 60, y1 = 55)
segments(x0 = 45, y0 = 25, x1 = 45, y1 = 5)
# Fourth Round
segments(x0 = 60, y0 = 35, x1 = 60, y1 = 15)
# Fifth Round
segments(x0 = 75, y0 = 70, x1 = 75, y1 = 25)
# Sixth Round
segments(x0 = 90, y0 = 45, x1 = 90, y1 = 5, lty = 2)


# Bracket Lables
text(x = 0, y = 100, "Winner's Bracket", adj = c(0,-0.2),font = 4, cex = 1.5)
text(x = 0, y = 40, "Loser's Bracket", adj = c(0,-0.2),font = 4, cex = 1.5)


# Game Titles
text(x = 15, y = 80, "Game 01 @ 09:00 am", adj = c(1,-0.2), font = 4, cex = 0.7)
text(x = 15, y = 60, "Game 02 @ 09:00 am", adj = c(1,-0.2), font = 4, cex = 0.7)
text(x = 30, y = 85, "Game 03 @ 10:20 am", adj = c(1,-0.2), font = 4, cex = 0.7)
text(x = 30, y = 55, "Game 04 @ 10:20 am", adj = c(1,-0.2), font = 4, cex = 0.7)
text(x = 30, y = 25, "Game 05 @ 11:40 am", adj = c(1,-0.2), font = 4, cex = 0.7)
text(x = 30, y = 5, "Game 06 @ 11:40 am", adj = c(1,-0.2), font = 4, cex = 0.7)
text(x = 60, y = 70, "Game 07 @ 01:00 pm", adj = c(1,-0.2), font = 4, cex = 0.7)
text(x = 45, y = 15, "Game 08 @ 01:00 pm", adj = c(1,-0.2), font = 4, cex = 0.7)
text(x = 60, y = 25, "Game 09 @ 02:20 pm", adj = c(1,-0.2), font = 4, cex = 0.7)
text(x = 75, y = 45, "Game 10 @ 03:40 pm", adj = c(1,-0.2), font = 4, cex = 0.7)
text(x = 90, y = 25, "Game 11 @ 05:00 pm", adj = c(1,-0.2), font = 4, cex = 0.7)

# Team Labels
# data[data$BracketID == "G01", 5]

# Game 1
text(x = 0, y = 85, data[data$BracketID == "G01", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
text(x = 0, y = 75, data[data$BracketID == "G02", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
# Game 2
text(x = 0, y = 65, data[data$BracketID == "G03", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
text(x = 0, y = 55, data[data$BracketID == "G04", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
# Game 3
text(x = 15, y = 90, data[data$BracketID == "G05", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
text(x = 15, y = 80, data[data$BracketID == "G06", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
# Game 4
text(x = 15, y = 60, data[data$BracketID == "G08", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
text(x = 15, y = 50, data[data$BracketID == "G07", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
# Game 5
text(x = 15, y = 30, data[data$BracketID == "G09", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
text(x = 15, y = 20, data[data$BracketID == "G10", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
# Game 6
text(x = 15, y = 10, data[data$BracketID == "G11", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
text(x = 15, y = 0, data[data$BracketID == "G12", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
# # Game 7
text(x = 30, y = 85, data[data$BracketID == "G13", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
text(x = 30, y = 55, data[data$BracketID == "G14", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
# # Game 8
text(x = 30, y = 25, data[data$BracketID == "G15", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
text(x = 30, y = 5, data[data$BracketID == "G16", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
# # Game 9
text(x = 45, y = 35, data[data$BracketID == "G17", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
text(x = 45, y = 15, data[data$BracketID == "G18", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
# Game 10
text(x = 60, y = 70, data[data$BracketID == "G19", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
text(x = 60, y = 25, data[data$BracketID == "G20", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
# # Game 11
text(x = 75, y = 45, data[data$BracketID == "G21", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
text(x = 75, y = 5, data[data$BracketID == "G22", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)
# # Final
text(x = 90, y = 25, data[data$BracketID == "G23", 5], adj = c(-0.1,-0.2),font = 2, cex = 0.8)