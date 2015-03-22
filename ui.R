library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel(h1("What should be your ideal weight?")),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(position="right",
    sidebarPanel(sliderInput("slider1", label = h3("My Height in Inches"),
                             min = 45, max = 85, value = 64)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h4("Expeted weight for US women "),
      verbatimTextOutput("text1"),
      verbatimTextOutput("text2"),
      
      h4("Notes for using this application:"),
      h6 ("This app uses the Average Heights and Weights for American Women data available in R-base package to predict the 
    expected weight for a particular height. To use the app, please use the slider on right to provide your height in
    inches. The app will predict the expected weight in lb.")
        
    )
  )
))