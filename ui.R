library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Comparing Histograms with Box Plots"),
  
  # Sidebar with a slider input for the number of means
  sidebarLayout(
    sidebarPanel(
      sliderInput("mu",
                    "Mean of the normal distribution:",
                  min = 5,
                  max = 150,
                  value = 10),
                  
      sliderInput("sd",
                    "Standard deviation of the normal distribution:",
                  min = 5,
                  max = 150,
                  value = 10),
               
                  sliderInput("rate",
                    "Parameter of exponential distribution:",
                  min = .001,
                  max = .99,
                  value = .01
                 ),
                  
                  sliderInput("N",
                    "Sample size:",
                  min = 1,
                  max = 500,
                  value = 20)
   
    ),
    
 

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
   )
 ))
