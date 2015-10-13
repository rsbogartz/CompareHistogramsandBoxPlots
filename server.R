 library(shiny)
 library(httr)


shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
  
  
  data <- rnorm(input$N, input$mu, input$sd) + rexp(input$N, input$rate)
   
  par(mfrow = c(1,2))
  hist(data)
  boxplot(data)
  
  })
  
})

