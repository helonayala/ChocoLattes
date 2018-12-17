# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

# hello <- function() {

  lattes.list <- lattes_to_list(CV.dir = "data/")

  lattes.list <- set_qualis2(lattes.list = lattes.list, qualis.file = "data/qualis20132016.csv", which.qualis = c("A1","A2","B1","B2","B3","B4","C"))

  make_productions_page(lattes.list = lattes.list,
                        chart.type  = "plotly",
                        h1.title    = "Helon Ayala",
                        h2.title    = "PUC-Rio, Brazil",
                        language    = "EN")

  # a = plot_chart2(lattes.list,chart.type = "ggplot2",
  #                         language     = c("EN"),
  #                         which.fields = c("journal.accepted",
  #                                          "journal.published",
  #                                          "conference.international",
  #                                          "conference.national",
  #                                          "book.chapters",
  #                                          "books",
  #                                          "phd.theses",
  #                                          "msc.theses"))

  # a = plot_chart(lattes.list,chart.type = "ggplot2",
  #                         language     = c("EN"),
  #                         which.fields = c("journal.accepted",
  #                                          "journal.published",
  #                                          "conference.international",
  #                                          "conference.national",
  #                                          "book.chapters",
  #                                          "books",
  #                                          "phd.theses",
  #                                          "msc.theses"))
  # lattes.list = set_qualis(lattes.list = lattes.list, qualis.file = "qualis.csv", which.qualis = c("A1","A2","B1","B2","B3","B4","C"))

  # extract_qualis(lattes.list = lattes.list,years = 2018, qualis.file = "qualis.csv")



# }
