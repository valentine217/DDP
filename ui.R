library(shiny)

shinyUI(
  pageWithSidebar(
    headerPanel("Spain soccer team results prediction for nex World Cup 2014"),
  sidebarPanel(
    numericInput('goals','Plese, insert the number of goals of the Spanish team rival in the next match. Then press "submit" button for a results prediction',5,min=0,max=10,step=1),
    submitButton('Submit')
    ),
  mainPanel(
    h3('Results of prediction'),
    h4('You entered the rival goals are'),
    verbatimTextOutput("inputValue"),
    h4('So, Spanish team will get a number of goals of'),
    verbatimTextOutput("prediction"),
    h4('Spanish team wins again!!!'),
    plotOutput('main_plot')
    )
  )
)
 