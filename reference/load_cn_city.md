# Loading Chinese City-Level Administrative Division Polygon Data

Loading Chinese City-Level Administrative Division Polygon Data

## Usage

``` r
load_cn_city(simplify = TRUE, keep = 0.05, keep_shape = TRUE, ...)
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
#> Linking to GEOS 3.12.1, GDAL 3.8.4, PROJ 9.4.0; sf_use_s2() is TRUE
city = load_cn_city()
#> Warning: GDAL Message 1: organizePolygons() received a polygon with more than 100 parts.  The processing may be really slow.  You can skip the processing by setting METHOD=SKIP.
city
#> Simple feature collection with 371 features and 6 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: 73.50655 ymin: 3.83703 xmax: 135.0945 ymax: 53.56362
#> Geodetic CRS:  WGS 84
#> # A tibble: 371 × 7
#>    省     省代码 市类型 省类型 市     市代码                            geometry
#>    <chr>   <dbl> <chr>  <chr>  <chr>   <dbl>                  <MULTIPOLYGON [°]>
#>  1 安徽省 340000 地级市 省     安庆市 340800 (((117.1507 31.07444, 117.1304 31.…
#>  2 安徽省 340000 地级市 省     蚌埠市 340300 (((117.9735 33.33581, 117.9467 33.…
#>  3 安徽省 340000 地级市 省     亳州市 341600 (((116.3881 33.78433, 116.3432 33.…
#>  4 安徽省 340000 地级市 省     池州市 341700 (((118.0955 30.64345, 118.0941 30.…
#>  5 安徽省 340000 地级市 省     滁州市 341100 (((119.1795 32.82747, 119.1075 32.…
#>  6 安徽省 340000 地级市 省     阜阳市 341200 (((116.3891 32.89303, 116.3654 32.…
#>  7 安徽省 340000 地级市 省     合肥市 340100 (((117.1955 32.53608, 117.1521 32.…
#>  8 安徽省 340000 地级市 省     淮北市 340600 (((116.9182 33.30882, 116.9242 33.…
#>  9 安徽省 340000 地级市 省     淮南市 340400 (((117.1903 32.73662, 117.1503 32.…
#> 10 安徽省 340000 地级市 省     黄山市 341000 (((118.864 30.10411, 118.8452 30.1…
#> # ℹ 361 more rows
```
