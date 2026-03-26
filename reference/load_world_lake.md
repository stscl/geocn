# Loading Global Lakes

Loading Global Lakes

## Usage

``` r
load_world_lake()
```

## Value

An sf object

## Examples

``` r
load_world_lake()
#> Simple feature collection with 412 features and 2 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -165.8985 ymin: -50.62002 xmax: 176.0827 ymax: 81.94033
#> Geodetic CRS:  WGS 84
#> # A tibble: 412 × 3
#>    scalerank name                                                       geometry
#>        <dbl> <chr>                                            <MULTIPOLYGON [°]>
#>  1         0 Mälaren          (((17.97979 59.32905, 17.87617 59.2708, 17.57051 …
#>  2         0 Lake Ladoga      (((29.83672 61.22607, 29.83672 61.22607, 29.83672…
#>  3         0 Lake Albert      (((31.47158 2.385449, 31.39551 2.28042, 31.38398 …
#>  4         0 Lake Erie        (((-83.10483 42.28643, -83.07646 42.27549, -83.10…
#>  5         0 Lake Chad        (((14.74229 13.07803, 14.74277 13.06235, 14.71602…
#>  6         0 Lake Malawi      (((35.26016 -14.27744, 35.26016 -14.27744, 35.260…
#>  7         0 Lake Victoria    (((34.71758 -0.09169922, 34.71758 -0.09169922, 34…
#>  8         0 Lake Baikal      (((109.8639 55.53896, 109.8639 55.53896, 109.8639…
#>  9         0 Lake Winnipeg    (((-96.37256 50.72925, -96.37256 50.72925, -96.35…
#> 10         0 Great Slave Lake (((-109.0221 62.80669, -109.0221 62.80669, -109.0…
#> # ℹ 402 more rows
```
