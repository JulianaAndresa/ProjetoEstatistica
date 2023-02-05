library(readxl)
library(magrittr)
library(dplyr)

df_beaches=read_excel(path = "C:/Users/julia/OneDrive/Documentos/Juliana/EstatisticaProjeto/sp_beaches.xlsx")

filtrados = df_beaches %>% filter(City == "PERUÍBE") %>% 
  mutate(Enterococcus = as.numeric(Enterococcus))

peruibe <- filtrados %>% 
  group_by(Beach) %>% 
  summarise(media = mean(Enterococcus), 
            desvioPadrao = sd(Enterococcus),
            mediana = median(Enterococcus), 
            q1 = quantile(Enterococcus, probs = 0.25),
            q3 = quantile(Enterococcus, probs = 0.75),
            minimo = min(Enterococcus),
            maximo = max(Enterococcus),
            contagem = n())
peruibe

dados <- peruibe %>% 
  summarise(Beach, contagem) %>% 
  mutate(Frequencia = contagem/sum(contagem)) %>%  
  mutate(Frequencia = round(Frequencia*100,2))


library(ggplot2)
library(tidyverse)

#Gráfico Barra
dados %>% 
  ggplot(aes(x= reorder(Beach, -contagem), y = contagem, fill =  Beach)) + 
  geom_bar(stat = 'identity') +
  labs(title = "Gráfico de Barras", subtitle = "Praias de Peruibe")+
  geom_text(aes(y = contagem, label = Frequencia), vjust = -0.2,
            position = position_dodge(width = 1)) +
  theme_light(base_size = 9)

#Gráfico Pizza
dados %>% 
  ggplot(aes(x= "", y = contagem, fill = Beach)) +
  geom_bar(stat = "identity") +
  labs(title = "Gráfico de Pizza", subtitle = "Praias de Peruibe")+
  coord_polar("y", start=0)+
  geom_text(aes(x ="", y= contagem, label = Frequencia),
              position = position_stack(vjust = 0.5))+
  theme_void()

#Histograma

filtrados %>%
  ggplot(aes(x = Enterococcus)) +
  geom_histogram(fill = 'dark blue', color = 'black')+
  ggtitle("Histograma Enterococos Peruibe")

#Box-plots

filtrados %>% 
  ggplot(aes(x=Beach, y=Enterococcus, fill = Beach))+
  geom_boxplot()+
  theme_grey(base_size = 8)
