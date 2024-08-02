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

#' Loading the 10-dash line of the South China Sea
#'
#' @return An sf object
#' @export
#'
#' @examples
#' cn_tenline = load_cn_tenline()
#' cn_tenline
#'
load_cn_tenline = \(){
  cn_tenline = system.file('extdata/china.gdb',package = 'geocn') |>
    sf::read_sf(layer = 'tenline')
  return(cn_tenline)
}

#' Loading China's Land Border Line and the 10-dash line of the South China Sea
#'
#' @return An sf object
#' @export
#'
#' @examples
#' cn_border = load_cn_border()
#' cn_border
#'
load_cn_border = \(){
  cn_border = system.file('extdata/china.gdb',package = 'geocn') |>
    sf::read_sf(layer = 'border')
  return(cn_border)
}
