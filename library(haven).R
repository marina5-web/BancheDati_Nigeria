library(haven)
library(ggplot2)
library(dplyr)

setwd("C:/banche dati")

df <- read_dta("nup_ph_mod_d.dta")

# Rinomina le categorie di hd_18 secondo il tuo ordine
df <- df %>%
  mutate(
    hd_18_label = case_when(
      hd_18 == 1 ~ "ON LEAVE/HOLIDAY",
      hd_18 == 2 ~ "SICKNESS",
      hd_18 == 3 ~ "BUSINESS CLOSED TEMPORARILY",
      hd_18 == 4 ~ "STRIKE, LABOR DISPUTE",
      hd_18 == 5 ~ "SHIFT WORK, FLEX TIME",
      hd_18 == 6 ~ "SEASONAL WORK",
      hd_18 == 8 ~ "OTHER (SPECIFY)",
      TRUE ~ NA_character_
    )
  )

# Grafico con etichette leggibili e NA rimossi
ggplot(df %>% filter(!is.na(hd_18_label)), aes(x = hd_18_label)) +
  geom_bar(fill = "#BB2E29", color = "white") +
  labs(
    title = "Motivo per cui non ha lavorato negli ultimi 7 giorni",
    x = "Motivazione",
    y = "Numero di osservazioni"
  ) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 25, hjust = 1))
