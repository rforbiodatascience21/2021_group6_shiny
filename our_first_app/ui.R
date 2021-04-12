library(shiny)
library(shinythemes)


shinyUI(fluidPage(
  theme = shinytheme("cerulean"),
  
  # Application title
  titlePanel("Gravier Data"),
  
  selectInput("gene", "Select Gene:",
              c("gene1" = "g7F07",
                "gene2" = "g2E09",
                "gene3" = "g1A08")
              ),
  
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("boxplot")
  
)
))
