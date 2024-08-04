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

#' Loading the Boundary Polygon Data of Loess Plateau
#'
#' @return An sf object
#' @export
#'
#' @examples
#' load_loess_plateau()
#'
load_loess_plateau = \(){
  cn_loess_plateau = system.file('extdata/loess_plateau.geojson',package = 'geocn') |>
    sf::read_sf()
  return(st_rename_geometry(cn_loess_plateau,'geometry'))
}
