# cargando data set

mosaicos <- read_csv("data/mosaicos_df.csv")

# quitando espacios en numeros de la variable frecuencia
mosaicos$frecuencia <- gsub(pattern = " ", replacement = "", x = mosaicos$frecuencia)

mosaicos$frecuencia <- as.numeric(mosaicos$frecuencia)

# haciendo los graficos

mosaicos %>%
  filter(clase == "I") %>%
  ggplot(aes(x = enfermedad, y = frecuencia, color = edad, group = edad)) +
  geom_line(size = 2) +
  geom_point(size = 6)+
  geom_text(aes(label = frecuencia),
            nudge_x = 0.25, nudge_y = 0.25,
            check_overlap = TRUE)+
  xlab("")+
  theme_classic()+
  theme(text = element_text(size = 20))




# haciendo la funcion

plot_mosaicos <- function(tipo){
  mosaicos %>%
    filter(clase == tipo) %>%
    ggplot(aes(x = enfermedad, y = frecuencia, color = edad, group = edad)) +
    geom_line(size = 2) +
    geom_point(size = 6)+
    xlab("")+
    theme_classic()+
    theme(text = element_text(size = 20))
}

plot_mosaicos(tipo = "I")

