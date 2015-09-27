library(shiny)
library(caret)
shinyUI (
  pageWithSidebar (
    # Application title
    headerPanel ("Vapor Pressure of Mercury as a Function of Temperature"),
    
    sidebarPanel (
    # using numeric input is relatively easy, but when trying to combine with other sources, e.g numeric and dropdown menus, things become more complicated
        numericInput('temperature', 'temperature (Celsius degrees)', 100, min = 0, max= 400, step = 10),
    submitButton('Submit')
    ),
    mainPanel (
      h4 ('Select a different temperature to estimate the corresponding vapor pressure of mercury '),
      h3 ('Expected pressure (mm)'),
      textOutput("prediction")
    )
  )
  
)