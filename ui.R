library(shiny)

shinyUI(fluidPage(
    titlePanel("The effect off Vitamin C on Guinea Pig Tooth Growth"),

    sidebarLayout(
     
          sidebarPanel(
              h3("Chose delivery method"),
              
              radioButtons("buttons1", "choose dose:", c("VC", "OJ")),
              textOutput("text1")

                      ),
          mainPanel(
                    p("60 Guinea Pigs where given doses of Vitamin to see the effect on growth of teeth, 
                        it was administed in 2 different ways, through Orange Juice or Ascorbic Acid. 
                      Choose delivery method on the side to see how the relationship between the dose and 
                      tooth length varies with the 2 delivery methods"),
                    
                   
                    plotOutput("plot1"),
                    p("The average tooth length with the chosen delivery method:"),
                    textOutput("avg"),
                    tableOutput("table1")
                    
                    
              )
                  )
                )
)