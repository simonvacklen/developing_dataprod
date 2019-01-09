library(shiny)

shinyServer(
  
  function(input, output) {
    
    output$text1 <- renderText({paste("You have chosen:", 
                                      if(input$buttons1 =="VC") "Ascorbic Acid", 
                                      if(input$buttons1 =="OJ") "Orange Juice")})
    
    output$plot1 <- renderPlot(
      {
        plot_data <- subset(ToothGrowth, supp==input$buttons1)
        plot(x=plot_data$len, y=plot_data$dose, xlab="Tooth Length", ylab="Dosage", main="")
        abline(lm(plot_data$dose~plot_data$len), col="red") 
      })
    output$avg <- renderText({
      plot_data <- subset(ToothGrowth, supp==input$buttons1)
      round(mean(plot_data$len), 1)})
      }
  
)


