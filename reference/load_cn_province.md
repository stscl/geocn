# Loading Chinese Province-Level Administrative Divisional Polygon Data

Loading Chinese Province-Level Administrative Divisional Polygon Data

## Usage

``` r
load_cn_province(simplify = TRUE, keep = 0.05, keep_shape = TRUE, ...)
```

## Arguments

- simplify:

  (optional) Whether to simplify loading sf objects (default TRUE)

- keep:

  (optional) Proportion of points to retain (0-1; default 0.05)

- keep_shape:

  (optional) Prevent small polygon features from disappearing at high
  simplification (default TRUE)

- ...:

  (optional) Other arguments passed to
  [`rmapshaper::ms_simplify()`](http://andyteucher.ca/rmapshaper/reference/ms_simplify.md)

## Value

Whether to simplify loading sf objects

## Examples

``` r
library(sf)
province = load_cn_province()
province
#> Simple feature collection with 34 features and 3 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: 73.50655 ymin: 3.83703 xmax: 135.0945 ymax: 53.56362
#> Geodetic CRS:  WGS 84
#> # A tibble: 34 × 4
#>    省             省代码 省类型                                         geometry
#>    <chr>           <dbl> <chr>                                <MULTIPOLYGON [°]>
#>  1 安徽省         340000 省         (((119.6189 31.13254, 119.5949 31.11146, 11…
#>  2 澳门特别行政区 820000 特别行政区 (((113.5538 22.21535, 113.5357 22.20232, 11…
#>  3 北京市         110000 直辖市     (((117.3475 40.67258, 117.3146 40.65677, 11…
#>  4 福建省         350000 省         (((118.2515 24.45437, 118.2291 24.44861, 11…
#>  5 甘肃省         620000 省         (((97.17197 42.79343, 97.07261 42.77249, 96…
#>  6 广东省         440000 省         (((110.5657 20.33342, 110.5895 20.36326, 11…
#>  7 广西壮族自治区 450000 自治区     (((109.1361 21.03521, 109.1408 21.06023, 10…
#>  8 贵州省         520000 省         (((109.5841 26.75517, 109.5573 26.75496, 10…
#>  9 海南省         460000 省         (((112.0522 3.838239, 112.0614 3.857381, 11…
#> 10 河北省         130000 省         (((118.6478 39.05611, 118.634 39.07486, 118…
#> # ℹ 24 more rows
```
