library(shiny)
library(shinythemes)


shinyUI(fluidPage(
  titlePanel("Gravier Data"), #Application title
  theme = shinytheme("cerulean"),
  sidebarLayout(
  sidebarPanel(
  selectInput("gene", "Select Gene:",
              c("gene1" = 'g7F07',
                "gene2" = 'g2E09',
                "gene3" = 'g1A08')),
  textInput("dna", "Complement DNA","WriteDNA:")
  )
  ,mainPanel(
  plotOutput("boxplot"),
  h3('Complemented DNA'),
  textOutput(outputId = 'complement',)
  )
  )))

