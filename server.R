library(shiny)
shinyServer(function(input, output){
  mysheet <- read.csv('exp.csv', header = FALSE)
  colnames(mysheet) <- c("lv", "exp_current", "exp_all")
  output$outputtest <- renderText({
    if (input$mvp) mvp <- 2 else mvp <- 1
    if (input$flagship) flagship <- 1.5 else flagship <- 1
    exp_needed <- mysheet[input$lv_target, "exp_all"] - mysheet[input$lv_current + 1, "exp_all"] + input$exp_remain
    exp_get <- as.numeric(input$area) * mvp * flagship * as.numeric(input$rank)
    battle_times <- ceiling(exp_needed / exp_get)
    paste("the times of battles you need: ", battle_times)
  })
})