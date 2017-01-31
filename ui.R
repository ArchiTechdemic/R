fluidPage(
  # Application title
  titlePanel("Word Analysis"),

  sidebarLayout(
    # Sidebar with a slider and selection inputs
    sidebarPanel(
      selectInput("selection", "Select a book:",
                  choices = books),
      actionButton("update", "Go"),
      hr(),
      sliderInput("freq",
                  "Min Frequency:",
                  min = 1,  max = 50, value = 10),
      sliderInput("max",
                  "Max # of Words to display:",
                  min = 1,  max = 300,  value = 80)
    ),

    # Show Word Cloud
    mainPanel(
      plotOutput("plot")
    )
  )
)