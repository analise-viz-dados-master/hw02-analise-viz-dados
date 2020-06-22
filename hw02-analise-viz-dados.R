library(ggplot2); library(dplyr); library(readr); library(summarytools)

df <- read_csv2("data-raw/notificacoes-covid19-mg.csv", col_types = c("nnnDccicncccccD"), locale = locale(encoding = "latin1", decimal_mark = ","))

dfSummary(df)

df %>% 
  group_by(DATA_NOTIFICACAO, FAIXA_ETARIA, EVOLUCAO) %>% 
  summarize(casos = n()) %>% 
  ggplot() +
  geom_line(aes(x = DATA_NOTIFICACAO, y = casos, color = EVOLUCAO)) +
  facet_wrap(~ FAIXA_ETARIA)