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
