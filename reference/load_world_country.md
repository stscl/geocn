# Load Global Country Boundaries

Load Global Country Boundaries

## Usage

``` r
load_world_country(center = "west")
```

## Arguments

- center:

  (optional) Center must be `west` or `east`. Default is `west`.

## Value

An sf object

## Details

When the `center` parameter is set to `west`, the map center is the
Atlantic Ocean; and when `center` is `east,` the map center is the
Pacific Ocean.

## Examples

``` r
load_world_country()
#> Simple feature collection with 249 features and 7 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -180 ymin: -90 xmax: 180 ymax: 83.6341
#> Geodetic CRS:  WGS 84
#> # A tibble: 249 × 8
#>    country1         country2       capital1 capital2 continent iso_a2 adm0_a3_us
#>    <chr>            <chr>          <chr>    <chr>    <chr>     <chr>  <chr>     
#>  1 阿鲁巴           Aruba          奥拉涅斯塔德…… Oranjes… North Am… AW     ABW       
#>  2 阿富汗           Afghanistan    喀布尔   Kabul    Asia      AF     AFG       
#>  3 安哥拉           Angola         罗安达   Luanda   Africa    AO     AGO       
#>  4 安圭拉           Anguilla       瓦利     The Val… North Am… AI     AIA       
#>  5 阿尔巴尼亚       Albania        地拉那   Tirana   Europe    AL     ALB       
#>  6 奥兰群岛         Aland Islands  玛丽港   Marieha… Europe    AX     ALD       
#>  7 安道尔共和国     Andorra        安道尔   Andorra… Europe    AD     AND       
#>  8 阿拉伯联合酋长国 United Arab E… 阿布扎比 Abu Dha… Asia      AE     ARE       
#>  9 阿根廷           Argentina      布宜诺斯艾利斯… BuenosA… South Am… AR     ARG       
#> 10 亚美尼亚         Armenia        埃里温   Yerevan  Asia      AM     ARM       
#> # ℹ 239 more rows
#> # ℹ 1 more variable: geometry <MULTIPOLYGON [°]>
```
