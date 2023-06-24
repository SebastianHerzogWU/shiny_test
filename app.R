requiredPackages <- c("DBI", "tidyverse", "RSQLite",
                      "RPostgres","dbplyr","data.table",
                      "lubridate","arrow","furrr",
                      "frenchdata","quantmod","tseries","ggplot2","shiny")


ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

ipak(requiredPackages)

#If you want to clean the plot viewer
#dev.off(dev.list()["RStudioGD"])
rm(list = ls())



# Define UI for app that draws a histogram ----
ui <- fluidPage(
  titlePanel("My Shiny App"),
  sidebarLayout(
    sidebarPanel(
      h2("Installation"),
      p("Shiny is available on CRAN, so you can install it in the usual way from your R console:"),
      code('install.packages("shiny")'),
      br(),
      br(),
      br(),
      br(),
      img(src = "my-pic.jpg", height = 70, width = 200),
      br(),
      "Shiny is a product of ", 
      span("RStudio", style = "color:blue")
    ),
    mainPanel(
      h1("Introducing Shiny"),
      p("Shiny is a new package from RStudio that makes it ", 
        em("incredibly easy "), 
        "to build interactive web applications with R."),
      br(),
      p("For an introduction and live examples, visit the ",
        a("Shiny homepage.", 
          href = "https://shiny.posit.co")),
      br(),
      h2("Features"),
      p("- Build useful web applications with only a few lines of code—no JavaScript required."),
      p("- Shiny applications are automatically 'live' in the same way that ", 
        strong("spreadsheets"),
        " are live. Outputs change instantly as users modify inputs, without requiring a reload of the browser.")
    )
  )
)
  
  


# Define server logic required to draw a histogram ----
server <- function(input, output) {
  
  
  
}

shinyApp(ui = ui, server = server)
