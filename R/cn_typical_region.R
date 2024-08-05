#' Loading the Boundary Polygon Data of Weihe River Basin
#'
#' @return An sf object
#' @export
#'
#' @examples
#' load_weihe_basin()
#'
load_weihe_basin = \(){
  suppressWarnings({
    cn_weihe_basin = system.file('extdata/weihe.gdb',package = 'geocn') |>
    sf::read_sf(layer = 'basin') |>
    st_rename_geometry('geometry') |>
    sf::st_cast('POLYGON')
    })
  return(cn_weihe_basin)
}

#' Loading the Boundary Polygon Data of Yangtze River Basin
#'
#' @return An sf object
#' @export
#'
#' @examples
#' load_yangtze_basin()
#'
load_yangtze_basin = \(){
  suppressWarnings({
    cn_yangtze_basin = system.file('extdata/YangtzeRiverBasin.geojson',
                                   package = 'geocn') |>
      sf::read_sf()
  })
  return(cn_yangtze_basin)
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
  cn_loess_plateau = system.file('extdata/loess_plateau.geojson',
                                 package = 'geocn') |>
    sf::read_sf()
  return(st_rename_geometry(cn_loess_plateau,'geometry'))
}

#' Loading the Boundary Polygon Data of Tibetan Plateau
#'
#' @return An sf object
#' @export
#'
#' @examples
#' load_tibetan_plateau()
#'
load_tibetan_plateau = \(){
  cn_tibetan_plateau = system.file('extdata/tibetan_plateau.geojson',
                                   package = 'geocn') |>
    sf::read_sf()
  return(st_rename_geometry(cn_tibetan_plateau,'geometry'))
}
