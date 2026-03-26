# Loading Global Continents

Loading Global Continents

## Usage

``` r
load_world_continent()
```

## Value

An sf object

## Examples

``` r
load_world_continent()
#> Simple feature collection with 8 features and 1 field
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -180 ymin: -90 xmax: 180 ymax: 83.6236
#> Geodetic CRS:  WGS 84
#> # A tibble: 8 × 2
#>   CONTINENT                                                             geometry
#>   <chr>                                                       <MULTIPOLYGON [°]>
#> 1 Asia          (((93.27554 80.26361, 93.31304 80.27415, 93.27249 80.30193, 93.…
#> 2 North America (((-25.28167 71.39166, -25.32889 71.41165, -25.44833 71.45139, …
#> 3 Europe        (((58.06138 81.68776, 57.98055 81.68858, 57.93971 81.6922, 57.9…
#> 4 Africa        (((0.694651 5.773365, 0.6666666 5.803194, 0.6505165 5.837184, 0…
#> 5 South America (((-81.71306 12.49028, -81.72014 12.49632, -81.72015 12.54528, …
#> 6 Oceania       (((-177.3933 28.18416, -177.3958 28.18749, -177.388 28.21458, -…
#> 7 Australia     (((142.28 -10.26556, 142.2105 -10.2368, 142.2014 -10.22556, 142…
#> 8 Antarctica    (((51.80305 -46.45667, 51.72139 -46.45278, 51.71055 -46.44667, …
```
