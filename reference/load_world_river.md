# Loading Global Rivers

Loading Global Rivers

## Usage

``` r
load_world_river()
```

## Value

An sf object

## Examples

``` r
load_world_river()
#> Simple feature collection with 1616 features and 4 fields
#> Geometry type: MULTILINESTRING
#> Dimension:     XY
#> Bounding box:  xmin: -165.2439 ymin: -50.24014 xmax: 176.3258 ymax: 73.3349
#> Geodetic CRS:  WGS 84
#> # A tibble: 1,616 × 5
#>    name        type            scalerank strokelwd                      geometry
#>    <chr>       <chr>               <int>     <dbl>         <MULTILINESTRING [°]>
#>  1 NA          River                   5       2   ((-72.99133 46.17744, -73.07…
#>  2 Ebro        River                   5       1.5 ((-4.18886 43.01117, -4.1022…
#>  3 Ebro        River                   5       2   ((-1.747614 42.23592, -1.994…
#>  4 Ebro        River                   5       2.5 ((-1.747614 42.23592, -1.405…
#>  5 Ebro        River                   5       3   ((0.3950202 41.2543, 0.52542…
#>  6 Mississippi Lake Centerline         5       2   ((-94.50681 47.45641, -94.63…
#>  7 Mississippi Lake Centerline         5       2.5 ((-94.32648 47.40563, -94.20…
#>  8 Mississippi River                   5       1.5 ((-95.02582 47.15611, -94.96…
#>  9 Mississippi River                   5       2   ((-94.9681 47.3175, -94.8770…
#> 10 Mississippi River                   5       2   ((-94.50774 47.45654, -94.32…
#> # ℹ 1,606 more rows
```
