#' Loading Chinese Provincial Administrative Divisional Polygon Data
#'
#' @param simplify (optional) Whether to simplify loading sf objects (default TRUE)
#' @param keep (optional) Proportion of points to retain (0-1; default 0.05)
#' @param keep_shape (optional)	Prevent small polygon features from disappearing at high simplification (default TRUE)
#' @param ... (optional) Other arguments passed to `rmapshaper::ms_simplify()`
#'
#' @return Whether to simplify loading sf objects
#' @export
#'
#' @examples
#' library(sf)
#' province = load_province_cn()
#' province
#'
load_province_cn = \(simplify = TRUE,
                     keep = 0.05,
                     keep_shape = TRUE,
                     ...){
  cn_province = system.file('extdata/china.gdb',package = 'geocn') |>
    sf::read_sf(layer = '省')

  if (simplify){
    cn_province = cn_province |>
      rmapshaper::ms_simplify(keep = keep,keep_shapes = keep_shape,...) |>
      sf::st_cast('MULTIPOLYGON')
  }
  return(cn_province)
}
