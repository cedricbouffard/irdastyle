
<!-- README.md is generated from README.Rmd. Please edit that file -->

# irdastyle

<!-- badges: start -->
<!-- badges: end -->

``` r
devtools::install_github("cedricbouffard/irdastyle")
```

``` r
library(irdastyle)
```

## ggplot2

``` r
library(ggplot2)
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  theme_irda() +
  scale_color_irda()
```

<img src="man/figures/README-ggplot2-1.png" width="100%" />

## echarts

``` r
library(echarts4r)
a=iris|>
 dplyr::group_by(Species) |>
   e_charts(Sepal.Length) |>
   e_scatter(Sepal.Width) |>
   e_theme_irda()
```

![](./man/figures/README-echarts4r-1.png)

## gt

``` r
library(gt)
gt(iris |> head() ) |>
  theme_gt_irda() 
```

![](./man/figures/README-gt-1.png)

## flextable

``` r
library(flextable)
flextable(iris|>head()) |>
 flextable_irda()
```

<img src="man/figures/README-flextable-1.png" width="100%" />

## DT

``` r

datatable_irda(iris|>head())
```

![](./man/figures/README-DT-1.png)
