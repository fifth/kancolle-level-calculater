library(shiny)
shinyUI(fluidPage(
  titlePanel("experience calculater of kancolle"),
  mainPanel(numericInput("lv_current",
                         label = "current LV",
                         value = 1,
                         min = 1,
                         max = 99,
                         step = 1
            ),
            numericInput("exp_remain",
                         label = "experience remain",
                         value = 100,
                         min = 0,
                         step = 1
            ),
            numericInput("lv_target",
                         label = "target LV",
                         value = 1,
                         min = 1,
                         max = 99,
                         step = 1
            ),
            selectInput("area",
                        label = "battle area",
                        choices = list("1-1" = 30, "1-5" = 150, "3-2" = 320),
                        selected = 11
            ),
            selectInput("rank",
                        label = "battle rank",
                        choices = list("S" = 1.2, "A" = 1, "B" = 1, "C" = 0.8, "D" = 0.7, "E"  = 0.5)
            ),
            checkboxInput("mvp",
                          label = "MVP or not",
                          value = FALSE
            ),
            checkboxInput("flagship",
                          label = "flagship or not",
                          value = FALSE
            ),
            textOutput("outputtest")
  )
))