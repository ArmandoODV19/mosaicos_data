# cargando data set

mosaicos <- read_csv("data/mosaicos_df.csv")

# quitando espacios en numeros de la variable frecuencia
mosaicos$frecuencia <- gsub(pattern = " ", replacement = "", x = mosaicos$frecuencia)

mosaicos$frecuencia <- as.numeric(mosaicos$frecuencia)

# haciendo los graficos

mosaicos %>%
  filter(clase == "I") %>%
  ggplot(aes(x = enfermedad, y = frecuencia, color = edad, group = edad)) +
  geom_line() +
  geom_point(size = 6)+
  xlab("")



