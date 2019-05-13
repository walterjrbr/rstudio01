relat\_indica
================
Walter Jr
5/13/2019

R Markdown
----------

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

``` r
#Verificação dos principais indicadores referentes ao item 1.04

library(tidyverse)
```

    ## ── Attaching packages ──────────────────────────────────────────────────────────────────────── tidyverse 1.2.1 ──

    ## ✔ ggplot2 3.1.1       ✔ purrr   0.3.2  
    ## ✔ tibble  2.1.1       ✔ dplyr   0.8.0.1
    ## ✔ tidyr   0.8.3       ✔ stringr 1.4.0  
    ## ✔ readr   1.3.1       ✔ forcats 0.4.0

    ## ── Conflicts ─────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

``` r
library(ggplot2)

setwd("/home/lab2")
dados=read.csv("R/PENSE_AMOSTRA1_ALUNOESCOLA.CSV",header=TRUE, sep=";")

dados1=subset(dados, select = c("aluno","VE01P45","VE01P47","VE01P48","VE01P11","VE01P13","VE01P49"))

dados2=subset(dados, select = c("aluno","VE01P45"))
print(head(dados2))
```

    ##   aluno VE01P45
    ## 1     1       2
    ## 2     2       2
    ## 3     3       2
    ## 4     4       2
    ## 5     5       2
    ## 6     6       2

``` r
#dados que influenciam a alimentação na escola

str(dados1)
```

    ## 'data.frame':    102072 obs. of  7 variables:
    ##  $ aluno  : int  1 2 3 4 5 6 7 8 9 10 ...
    ##  $ VE01P45: int  2 2 2 2 2 2 2 2 2 2 ...
    ##  $ VE01P47: int  1 1 1 1 1 1 1 1 1 1 ...
    ##  $ VE01P48: int  3 3 3 3 3 3 3 3 3 3 ...
    ##  $ VE01P11: int  1 1 1 1 1 1 1 1 1 1 ...
    ##  $ VE01P13: int  2 2 2 2 2 2 2 2 2 2 ...
    ##  $ VE01P49: int  2 2 2 2 2 2 2 2 2 2 ...

``` r
summary(dados1)
```

    ##      aluno           VE01P45          VE01P47          VE01P48      
    ##  Min.   :     1   Min.   :-2.000   Min.   :-2.000   Min.   :-2.000  
    ##  1st Qu.: 25519   1st Qu.: 1.000   1st Qu.: 1.000   1st Qu.: 1.000  
    ##  Median : 51036   Median : 1.000   Median : 1.000   Median : 1.000  
    ##  Mean   : 51036   Mean   : 1.176   Mean   : 1.159   Mean   : 1.833  
    ##  3rd Qu.: 76554   3rd Qu.: 1.000   3rd Qu.: 1.000   3rd Qu.: 3.000  
    ##  Max.   :102072   Max.   : 9.000   Max.   : 9.000   Max.   : 9.000  
    ##     VE01P11          VE01P13          VE01P49      
    ##  Min.   :-2.000   Min.   :-2.000   Min.   :-2.000  
    ##  1st Qu.: 1.000   1st Qu.: 1.000   1st Qu.: 1.000  
    ##  Median : 2.000   Median : 2.000   Median : 2.000  
    ##  Mean   : 1.543   Mean   : 1.645   Mean   : 1.741  
    ##  3rd Qu.: 2.000   3rd Qu.: 2.000   3rd Qu.: 2.000  
    ##  Max.   : 2.000   Max.   : 2.000   Max.   : 9.000

``` r
ggplot(dados1) + geom_smooth(aes(x = aluno, y = VE01P45))
```

    ## `geom_smooth()` using method = 'gam' and formula 'y ~ s(x, bs = "cs")'

![](relat_indica_files/figure-markdown_github/indica-1.png)

``` r
ggplot(dados1) + geom_smooth(aes(x = aluno, y = VE01P47))
```

    ## `geom_smooth()` using method = 'gam' and formula 'y ~ s(x, bs = "cs")'

![](relat_indica_files/figure-markdown_github/indica-2.png)

``` r
ggplot(dados1) + geom_smooth(aes(x = aluno, y = VE01P48))
```

    ## `geom_smooth()` using method = 'gam' and formula 'y ~ s(x, bs = "cs")'

![](relat_indica_files/figure-markdown_github/indica-3.png)

``` r
ggplot(dados1) + geom_smooth(aes(x = aluno, y = VE01P11))
```

    ## `geom_smooth()` using method = 'gam' and formula 'y ~ s(x, bs = "cs")'

![](relat_indica_files/figure-markdown_github/indica-4.png)

``` r
ggplot(dados1) + geom_smooth(aes(x = aluno, y = VE01P13))
```

    ## `geom_smooth()` using method = 'gam' and formula 'y ~ s(x, bs = "cs")'

![](relat_indica_files/figure-markdown_github/indica-5.png)

``` r
ggplot(dados1) + geom_smooth(aes(x = aluno, y = VE01P49))
```

    ## `geom_smooth()` using method = 'gam' and formula 'y ~ s(x, bs = "cs")'

![](relat_indica_files/figure-markdown_github/indica-6.png)

Including Plots
---------------

You can also embed plots, for example:

    ## `geom_smooth()` using method = 'gam' and formula 'y ~ s(x, bs = "cs")'

![](relat_indica_files/figure-markdown_github/dados1-1.png)

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
