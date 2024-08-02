

Le but de ce package est d'offrir des fonctions permettant d'appliquer facilement le style graphique de l'IRDA aux packages de visualisation les plus utilisés en R.

Pour installer ce package, utilisez la commande suivante :

```{r cars, eval=FALSE, message=FALSE, warning=FALSE, include=T}
devtools::install_github("cedricbouffard/irdastyle")
```

```{r}
library(irdastyle)
```

## ggplot2

```{r pressure}
library(ggplot2)
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  theme_irda() +
  scale_color_irda()
```

## echarts

```{r message=FALSE, warning=FALSE}
library(echarts4r)
iris|>
 dplyr::group_by(Species) |>
   e_charts(Sepal.Length) |>
   e_scatter(Sepal.Width) |>
   e_theme_irda()
```

## gt

```{r message=FALSE, warning=FALSE}
library(gt)
gt(iris |> head() ) |>
  theme_gt_irda()
```

## flextable

```{r message=FALSE, warning=FALSE}
library(flextable)
flextable(iris|>head()) |>
 flextable_irda()
```

## DT

```{r message=FALSE, warning=FALSE}

datatable_irda(iris|>head())
```
