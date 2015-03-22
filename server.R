library(shiny)

h.fit = lm(weight~height, data=women)
weightfunc = function(h){
  idealweight = round(predict.lm(h.fit,data.frame(height=h)),0)
  return(idealweight)
}

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  
  
  
  output$text1 <- renderText({ 
    paste("Your selected height is", input$slider1,"inches")
  })
  
  
  
  output$text2 <- renderText({ 
    paste("Your expected weight is ", weightfunc(input$slider1),"lb")
  })
  
  
  
})


