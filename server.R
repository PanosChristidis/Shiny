library(shiny)
library(caret)

# data used is from the dataset "pressure" that comes with R. Using an external dataset looks problematic in shiny, at least when working on a mac
# the model used is a simple lm, which makes sense for such a simple dataset. 
model<-train(pressure ~ temperature-1, method="glm", data=pressure)

shinyServer(
  function(input, output) { 
    output$prediction <- renderPrint ({
      temperature = input$temperature
      max(predict(model,data.frame(temperature)),0)})
      
      }
)