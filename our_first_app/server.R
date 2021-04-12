library(shiny)
library(tidyverse)

shinyServer(function(input, output) {
  output$boxplot <- renderPlot({
    
   ggplot(data = cancer_data,
           mapping = aes(x = age_group,
                         y = !!sym(input$gene),
                         fill=event_label))+
      geom_boxplot(alpha = 0.5)+
      labs(y=paste("Expression of Gene", input$gene, sep = " ", collapse = NULL), 
           x = " age group",fill = "Event Label")+
      coord_flip()
    
  })
  
})

