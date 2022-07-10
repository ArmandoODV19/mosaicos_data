# cargando data set

mosaicos <- read_csv("data/mosaicos_df.csv")

# quitando espacios en numeros de la variable frecuencia
mosaicos$frecuencia <- gsub(pattern = " ", replacement = "", x = mosaicos$frecuencia)

mosaicos$frecuencia <- as.numeric(mosaicos$frecuencia)
