# Coordinate Conversion Between GCJ02,BD09 and WGS84

Coordinate Conversion Between GCJ02,BD09 and WGS84

## Usage

``` r
st_transform_cn(lon, lat, from = "gcj", to = "wgs")
```

## Arguments

- lon:

  Longitude vector.

- lat:

  Latitude vector.

- from:

  (optional) Source CRS. Default is `gcj`.

- to:

  (optional) Target CRS. Default is `wgs`.

## Value

A coordinate tibble in the target CRS.

## Details

`wgs` stands for `WGS84` coordinate system, `gcj` stands for `GCJ02`
coordinate system, and `bd` stands for `BD09` coordinate system.

## Examples

``` r
lon = c(126.626510,126.625261,126.626378,126.626541,126.626721,126.627732,126.626510)
lat = c(45.731596,45.729834,45.729435,45.729676,45.729604,45.730915,45.731596)
st_transform_cn(lon,lat)
#> # A tibble: 7 × 2
#>     lon   lat
#>   <dbl> <dbl>
#> 1  127.  45.7
#> 2  127.  45.7
#> 3  127.  45.7
#> 4  127.  45.7
#> 5  127.  45.7
#> 6  127.  45.7
#> 7  127.  45.7
```
