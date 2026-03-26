# Loading China's Land Border Line and the 10-dash line of the South China Sea

Loading China's Land Border Line and the 10-dash line of the South China
Sea

## Usage

``` r
load_cn_border()
```

## Value

An sf object

## Examples

``` r
cn_border = load_cn_border()
cn_border
#> Simple feature collection with 1 feature and 0 fields
#> Geometry type: MULTILINESTRING
#> Dimension:     XY
#> Bounding box:  xmin: 73.53085 ymin: 3.40848 xmax: 134.981 ymax: 53.51356
#> Geodetic CRS:  WGS 84
#> # A tibble: 1 × 1
#>                                                                         geometry
#>                                                            <MULTILINESTRING [°]>
#> 1 ((110.3232 12.2405, 110.3159 11.96466, 110.2778 11.71434, 110.2279 11.55393, …
```
