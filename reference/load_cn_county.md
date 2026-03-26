# Loading Chinese County-Level Administrative Division Polygon Data

Loading Chinese County-Level Administrative Division Polygon Data

## Usage

``` r
load_cn_county(simplify = TRUE, keep = 0.05, keep_shape = TRUE, ...)
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
county = load_cn_county()
county
#> Simple feature collection with 2877 features and 9 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: 73.50655 ymin: 3.83703 xmax: 135.0945 ymax: 53.56362
#> Geodetic CRS:  WGS 84
#> # A tibble: 2,877 × 10
#>    省     省代码 市类型 省类型 市     市代码 县     县代码 县类型
#>    <chr>   <dbl> <chr>  <chr>  <chr>   <dbl> <chr>   <dbl> <chr> 
#>  1 安徽省 340000 地级市 省     安庆市 340800 大观区 340803 市辖区
#>  2 安徽省 340000 地级市 省     安庆市 340800 怀宁县 340822 县    
#>  3 安徽省 340000 地级市 省     安庆市 340800 潜山市 340882 县级市
#>  4 安徽省 340000 地级市 省     安庆市 340800 宿松县 340826 县    
#>  5 安徽省 340000 地级市 省     安庆市 340800 太湖县 340825 县    
#>  6 安徽省 340000 地级市 省     安庆市 340800 桐城市 340881 县级市
#>  7 安徽省 340000 地级市 省     安庆市 340800 望江县 340827 县    
#>  8 安徽省 340000 地级市 省     安庆市 340800 宜秀区 340811 市辖区
#>  9 安徽省 340000 地级市 省     安庆市 340800 迎江区 340802 市辖区
#> 10 安徽省 340000 地级市 省     安庆市 340800 岳西县 340828 县    
#> # ℹ 2,867 more rows
#> # ℹ 1 more variable: geometry <MULTIPOLYGON [°]>
```
