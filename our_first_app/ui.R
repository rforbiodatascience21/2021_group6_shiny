library(shiny)
library(shinythemes)


ui <- fluidPage(
  theme = shinytheme("cerulean"),
  selectInput("gene", "Select Gene:",
              c("gene1" = "g7F07",
                "gene2" = "g2E09",
                "gene3" = "g7F07")),
  plotOutput("boxplot")
)

