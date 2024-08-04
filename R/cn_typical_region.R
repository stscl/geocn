#' Loading the Boundary Polygon Data of Weihe River Basin
#'
#' @return An sf object
#' @export
#'
#' @examples
#' load_weihe_basin()
#'
load_weihe_basin = \(){
  cn_weihe_basin = system.file('extdata/weihe.gdb',package = 'geocn') |>
    sf::read_sf(layer = 'basin')
  return(st_rename_geometry(cn_weihe_basin,'geometry'))
}
