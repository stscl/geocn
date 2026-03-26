# Loading Coastline of China

Loading Coastline of China

## Usage

``` r
load_cn_coastline()
```

## Value

An sf object

## Examples

``` r
cn_coastline = load_cn_coastline()
cn_coastline
#> Simple feature collection with 1 feature and 0 fields
#> Geometry type: MULTILINESTRING
#> Dimension:     XY
#> Bounding box:  xmin: 105.5271 ymin: 18.12558 xmax: 131.2247 ymax: 43.45281
#> Geodetic CRS:  WGS 84
#> # A tibble: 1 × 1
#>                                                                         geometry
#>                                                            <MULTILINESTRING [°]>
#> 1 ((114.6479 22.46397, 114.6478 22.46406, 114.6477 22.46414, 114.6477 22.46423,…
```
