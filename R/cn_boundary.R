#' Loading China's Land Border and Coastline
#'
#' @return An sf object
#' @export
#'
#' @examples
#' cn_landcoast = load_cn_landcoast()
#' cn_landcoast
#'
load_cn_landcoast = \(){
  cn_landcoast = system.file('extdata/china.gdb',package = 'geocn') |>
    sf::read_sf(layer = 'landcoast')
  return(cn_landcoast)
}

#' Loading China's Land Border
#'
#' @return An sf object
#' @export
#'
#' @examples
#' cn_landborder = load_cn_landborder()
#' cn_landborder
#'
load_cn_landborder = \(){
  cn_landborder = system.file('extdata/china.gdb',package = 'geocn') |>
    sf::read_sf(layer = 'landborder')
  return(cn_landborder)
}
