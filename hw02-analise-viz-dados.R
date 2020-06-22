library(ggplot2); library(dplyr); library(readr); library(summarytools)

df <- read_csv2("data-raw/notificacoes-covid19-mg.csv", col_types = c("nnnDccicncccccD"), locale = locale(encoding = "latin1", decimal_mark = ","))

dfSummary(df)