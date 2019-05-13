#Verificação dos principais indicadores referentes ao item 1.04

library(tidyverse)
library(ggplot2)

setwd("/home/lab2")
dados=read.csv("R/PENSE_AMOSTRA1_ALUNOESCOLA.CSV",header=TRUE, sep=";")

dados1=subset(dados, select = c("aluno","VE01P45","VE01P47","VE01P48","VE01P11","VE01P13","VE01P49"))

dados2=subset(dados, select = c("aluno","VE01P45"))
print(head(dados2))

#dados que influenciam a alimentação na escola

str(dados1)
summary(dados1)



ggplot(dados1) + geom_smooth(aes(x = aluno, y = VE01P45))
ggplot(dados1) + geom_smooth(aes(x = aluno, y = VE01P47))
ggplot(dados1) + geom_smooth(aes(x = aluno, y = VE01P48))
ggplot(dados1) + geom_smooth(aes(x = aluno, y = VE01P11))
ggplot(dados1) + geom_smooth(aes(x = aluno, y = VE01P13))
ggplot(dados1) + geom_smooth(aes(x = aluno, y = VE01P49))

