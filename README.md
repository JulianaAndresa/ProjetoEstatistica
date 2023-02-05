# Projeto Estatística Exploratória

Tema - Análise estatística da qualidade da água das praias de Peruíbe- SP
Discente: Juliana Andresa Vieira de Lima

Projeto desenvolvido para a disciplina de Estatística Exploratória do Curso de Licenciatura em Computação. A atividade tem como objetivo desenvolver nossas habilidades na linguagem R, consistindo em analisar estatisticamente os dados referentes a qualidade da água das praias de São Paulo, mais precisamente Peruíbe.

## Arquivos

`codigo`: apresenta todo o conteúdo do projeto que foi elaborado em **R**  

`relatorioOficial.Rmd` : escrita e prepração do Relatório com explicações, gráficos, tabelas, resultados e conclusões  

`relatorioOficial.html`: relatório gerado em formato **HTML**  

`sp_beaches` : base de dados. Planilha referente a todos os dados e informações das praias para análise

## Atividade

* No decorrer dessa atividade foram realizadas análises das seguintes praias:  
  + GUARAÚ	: 444 total  
  + PERUÍBE (AV. S. JOÃO) : 463 total  
  + PERUÍBE (BALN. SÃO JOÃO BATISTA) : 463 total  
  + PERUÍBE (PARQUE TURÍSTICO) : 463 total  
  + PERUÍBE (R. ICARAÍBA) : 447	total  
  + PRAINHA : 445 total  

* Desenvolveu-se cálculos através da linguagem R para obtenção de resultados, como:

    + **Média:** função `mean`
    + **Desvio-padrão:** função `sd`
    + **Mediana:** função `median`
    + **Q1:** função `quantile` + `probs = 0.25`, primeiro quartil referente á 25% dos dados
    + **Q3:** função `quantile` + `probs = 0.75`, terceiro quartil referente á 75% dos dados
    + **Mínimo:** função `min`
    + **Máximo:** função `max`
    
 ## Gráficos, Histograma e Box-plot
    
 * Além disso, executou-se gráficos de barra e de pizza como forma de apresentar as frequências porcentuais de cada praia. Detalhes e visualizações pode-se ser visto no arquivo `relatorioOficial`
 * O Histograma resultou em dados assimétricos e de má distribuição. 
 * Da mesma forma, o Box-plot apresentou dados assimétricos positivos com a observação de outliers de limites superiores.
