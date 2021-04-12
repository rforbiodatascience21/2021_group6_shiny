library(shiny)
library(shinythemes)


ui <- fluidPage(
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
  h3('Complmented DNA'),
  textOutput(outputId = 'complement',)
  )
  )
)

