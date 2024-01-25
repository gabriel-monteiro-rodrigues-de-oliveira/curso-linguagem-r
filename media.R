## Exemplo

#--- Dados
library(datasets) # importar biblioteca 'datasets'
                  # antes instalar a biblioteca com 'install.packages("datasets")'

dados <- cars # atribuir a variavel 'dados' o conjunto de dados 'cars' de 'datasets'

#--- Media
media <- mean(cars$speed) # atribuir a variavel 'media' a media da coluna 'speed' do conjunto 'cars'

#--- Moda
library(DescTools)

moda_dist <- Mode(cars$dist)
moda_speed <- Mode(cars$speed) # 'Mode()' e um metodo da biblioteca 'DescTools'

#--- Mediana
mediana <- median(cars$dist)

#--- Desvio padrão

desvio_padrao <- sd(cars$dist)

#--- Correlação

correlacao <- cor(cars$speed, cars$dist)

correlacao <- cor.test(cars$speed, cars$dist)

#--- Amostra

amostra <- sample(1:50, 10, replace = FALSE)

amostras <- dados[amostra, ]

# rm(list = ls()) - remover todas variaveis

#-- Regressão linear
linear_model <- lm(dist ~ speed, data = cars)

summary(linear_model)

#-- Predição

novos_dados <- data.frame("speed" = c(21, 24, 26))

predict(linear_model, newdata = novos_dados, interval = "confidence")
