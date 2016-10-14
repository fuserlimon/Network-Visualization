library(shiny)
# Define server logic required to plot various variables 

library(RCurl)
library(bitops)
library(rjson)
library(streamR)
library(RColorBrewer)
library(wordcloud)
library(NLP)
library(tm)
library(bitops)
library(chron)
library(data.table)
library(networkD3)

shinyServer(function(input, output) {
  
  Force_clinton <- read.csv("force_clinton.csv", header = TRUE, sep = ",", quote = "\"",
                              dec = ".", fill = TRUE, comment.char = "")
  
  Force_bernie <- read.csv("force_sanders.csv", header = TRUE, sep = ",", quote = "\"",
                            dec = ".", fill = TRUE, comment.char = "")
  
  Force_trump <- read.csv("force_trump.csv", header = TRUE, sep = ",", quote = "\"",
                            dec = ".", fill = TRUE, comment.char = "")
  
  Force_cruz <- read.csv("force_cruz.csv", header = TRUE, sep = ",", quote = "\"",
                            dec = ".", fill = TRUE, comment.char = "")
  
output$simple_Clinton <- renderSimpleNetwork({
  src <- Force_clinton$source
  target <- Force_clinton$target
  networkData <- data.frame(src, target) 
  simpleNetwork(networkData)
  
  })
    
output$simple_Bernie <- renderSimpleNetwork({
  src <- Force_bernie$source
  target <- Force_bernie$target
  networkData <- data.frame(src, target) 
  simpleNetwork(networkData)
  
})

output$simple_Cruz <- renderSimpleNetwork({
  src <- Force_cruz$source
  target <- Force_cruz$target
  networkData <- data.frame(src, target) 
  simpleNetwork(networkData)
  
})

output$simple_Trump <- renderSimpleNetwork({
  src <- Force_trump$source
  target <- Force_trump$target
  networkData <- data.frame(src, target) 
  simpleNetwork(networkData)
  
})
  
  

  
})



