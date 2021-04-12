library(shiny)

server <- function(input, output) {
  output$boxplot <- renderPlot({
    ggplot(data = cancer_data,
           mapping = aes(x = age_group,
                         y = input$gene,
                         fill=event_label))+
      geom_boxplot(alpha = 0.5)+
      labs(y="Gene g2E09 Expression", x = " age group",fill = "Event Label")+
      coord_flip()
  })
}

