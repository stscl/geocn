#' Loading the commonly used Albers Lambert projection in China region.
#'
#' @param output (optional) Output format, must be `sf` or `terra`. Default is `sf`.
#'
#' @return An Available Projection CRS.
#' @export
#'
#' @examples
#' load_cn_alberproj()
#'
load_cn_alberproj = \(output = 'sf'){
  albers = "+proj=aea +lat_1=25 +lat_2=47 +lat_0=0 +lon_0=110 +x_0=0 +y_0=0 +datum=WGS84 +units=m +no_defs"
  if (output == 'sf') {
    return(sf::st_crs(albers))
  } else if (output == 'terra') {
    return(terra::crs(albers))
  } else {
    stop("output must be `sf` or `terra`")
  }
}
