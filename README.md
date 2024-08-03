
<!-- README.md is generated from README.Rmd. Please edit that file -->

# geocn <img src="man/figures/logo.png" align="right" height="90"/>

<!-- badges: start -->

[![CRAN](https://www.r-pkg.org/badges/version/geocn)](https://CRAN.R-project.org/package=geocn)
[![r-universe](https://spatlyu.r-universe.dev/badges/geocn)](https://spatlyu.r-universe.dev/geocn)

<!-- badges: end -->

The goal of geocn is to provide various commonly used spatial data
related to Chinese regions in the R programming environment.

## Installation

### Install from source

You can install the development version of *geocn* from
[*github*](https://github.com/SpatLyu/geocn):

``` r
# install.packages("devtools")
devtools::install_github("SpatLyu/geocn",
                         build_vignettes = T,
                         dep = T)
```

### Install the binary version

You can also install the binary version of **geocn** from
[r-universe](https://spatlyu.r-universe.dev/geocn):

``` r
install.packages("geocn", 
                 repos = c("https://spatlyu.r-universe.dev",
                           "https://cran.rstudio.com/"),
                 dep = TRUE)
```

## Example

### Drawing a Map of China Using `ggplot2`and `ggspatial`

``` r
library(sf)
library(ggplot2)
library(ggspatial)
library(cowplot)
library(geocn)
```

### Drawing a Map of China Using `tmap`

``` r
library(sf)
library(tmap)
library(cowplot)
library(geocn)

albers = load_cn_alberproj()
cn_border = load_cn_border()
main_border = load_cn_landcoast()
tenline = load_cn_tenline()
province = load_cn_province()

tm_shape(main_border,
         projection = albers) +
  tm_lines(col = NA,lwd = 0.01) +
  tm_shape(province) +
  tm_fill(col = 'white',alpha = .5) +
  tm_borders(col = 'grey40', lwd = 1.25) +
  tm_shape(cn_border) +
  tm_lines(col='#9d98b7',lwd = 2.5) +
  tm_scale_bar(position = c(0.05,0.01),
               width = 0.15,text.size = 1.05,
               lwd = 2) +
  tm_compass(position = c(0.05,0.9),
             just = 'center',size = 1.5,
             text.size = .65,show.labels = 1) +
  tm_layout(legend.width = 0.75,
            legend.text.size = 1,
            legend.height = 1.75,
            legend.position = c(0.045,0.075),
            compass.type = "arrow",
            fontfamily = "serif") -> cn_mainplot

tm_shape(tenline,
         projection = albers) +
  tm_lines(col=NA,lwd=0.01) +
  tm_shape(province) +
  tm_fill(col = 'white',alpha = .5) +
  tm_borders(col = 'grey40', lwd = 1.25) +
  tm_shape(cn_border) +
  tm_lines(col='#9d98b7',lwd = 2.5) -> cn_miniplot

ggdraw() +
  draw_plot(tmap_grob(cn_mainplot)) +
  draw_plot(tmap_grob(cn_miniplot),
            halign = 0.5,valign = 0.5,
            height = 0.2,
            x = 0.427,
            y = 0.019) -> cnmap2
```

<img src="man/figures/README-map2-1.png" width="100%" /><img src="man/figures/README-map2-2.png" width="100%" />

``` r
cnmap2
```

<img src="man/figures/README-map2-3.png" width="100%" />
