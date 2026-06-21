# List all data sets available in the geocn package

Returns a tibble with all datasets available in the geocn package.

## Usage

``` r
list_geocn()
```

## Value

A tibble

## Examples

``` r
list_geocn()
#> # A tibble: 20 × 2
#>    functions               results                                              
#>    <chr>                   <chr>                                                
#>  1 load_world_country      Global Country Boundaries                            
#>  2 load_world_continent    Global Continents                                    
#>  3 load_world_coastline    Global Coastlines                                    
#>  4 load_world_ocean        Global Oceans                                        
#>  5 load_world_lake         Global Lakes                                         
#>  6 load_world_river        Global Rivers                                        
#>  7 load_cn_province        Province-Level Administrative Units in China         
#>  8 load_cn_city            City-Level Administrative Units in China             
#>  9 load_cn_county          County-Level Administrative Units in China           
#> 10 load_cn_border          China's Land Border Line and the 10-dash line of the…
#> 11 load_cn_landborder      China's Land Border                                  
#> 12 load_cn_coastline       Coastline of China                                   
#> 13 load_cn_tenline         10-dash line of the South China Sea                  
#> 14 load_cn_landcoast       China's Land Border and Coastline                    
#> 15 load_tibetan_plateau    Tibetan Plateau Boundary                             
#> 16 load_loess_plateau      Loess Plateau Boundary                               
#> 17 load_yangtze_basin      Yangtze River Basin Boundary                         
#> 18 load_yellow_river_basin Yellow River Basin Boundary                          
#> 19 load_weihe_basin        Weihe River Basin Boundary                           
#> 20 load_tarim_basin        Tarim River Basin Boundary                           
```
