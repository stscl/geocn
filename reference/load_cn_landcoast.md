# Loading China's Land Border and Coastline

Loading China's Land Border and Coastline

## Usage

``` r
load_cn_landcoast()
```

## Value

An sf object

## Examples

``` r
cn_landcoast = load_cn_landcoast()
cn_landcoast
#> Simple feature collection with 1 feature and 0 fields
#> Geometry type: MULTILINESTRING
#> Dimension:     XY
#> Bounding box:  xmin: 73.53085 ymin: 18.12558 xmax: 134.981 ymax: 53.51356
#> Geodetic CRS:  WGS 84
#> # A tibble: 1 × 1
#>                                                                         geometry
#>                                                            <MULTILINESTRING [°]>
#> 1 ((124.3688 40.14596, 124.4699 40.19918, 124.5453 40.2525, 124.6446 40.30446, …
```
