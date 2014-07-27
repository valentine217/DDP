predictionGoals<-function(goals) goals + 3
shinyServer(
  function(input, output){
    output$inputValue<-renderPrint({input$goals})
    output$prediction<-renderPrint({predictionGoals(input$goals)})
    output$main_plot <- renderPlot({
    barplot(c(input$goals,input$goals+3),
           xlab = "Rival-Spain Goals",
           main = "Spain always wins!!")})
    }
  )