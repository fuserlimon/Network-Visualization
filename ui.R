library(shiny)


shinyUI(fluidPage(
 
 titlePanel("Mention networks of presidential nominees"),
  
  sidebarLayout(position = "right",
                sidebarPanel( "Click on the corresponding tab to see the Networks"),
                mainPanel(
                  tabsetPanel(
                    tabPanel ("Clinton", simpleNetworkOutput("simple_Clinton"), width = "50%"),
                    tabPanel ("Bernie", simpleNetworkOutput("simple_Bernie")),
                    tabPanel ("Cruz", simpleNetworkOutput("simple_Cruz")),
                    tabPanel ("Trump", simpleNetworkOutput("simple_Trump"))
                          )
                          )
)))


