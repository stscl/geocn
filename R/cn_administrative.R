#' Loading Chinese Province-Level Administrative Divisional Polygon Data
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
#' province = load_cn_province()
#' province
#'
load_cn_province = \(simplify = TRUE,
                     keep = 0.05,
                     keep_shape = TRUE,
                     ...){
  cn_province = system.file('extdata/china.gdb',package = 'geocn') |>
    sf::read_sf(layer = 'province')

  if (simplify){
    cn_province = cn_province |>
      rmapshaper::ms_simplify(keep = keep,keep_shapes = keep_shape,...) |>
      sf::st_cast('MULTIPOLYGON')
  }
  return(st_rename_geometry(cn_province,'geometry'))
}

#' Loading Chinese City-Level Administrative Division Polygon Data
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
#' city = load_cn_city()
#' city
#'
load_cn_city = \(simplify = TRUE,
                 keep = 0.05,
                 keep_shape = TRUE,
                 ...){
  cn_city = system.file('extdata/china.gdb',package = 'geocn') |>
    sf::read_sf(layer = 'city')

  if (simplify){
    cn_city = cn_city |>
      rmapshaper::ms_simplify(keep = keep,keep_shapes = keep_shape,...) |>
      sf::st_cast('MULTIPOLYGON')
  }
  return(st_rename_geometry(cn_city,'geometry'))
}

#' Loading Chinese County-Level Administrative Division Polygon Data
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
#' county = load_cn_county()
#' county
#'
load_cn_county = \(simplify = TRUE,
                   keep = 0.05,
                   keep_shape = TRUE,
                 ...){
  cn_county = system.file('extdata/china.gdb',package = 'geocn') |>
    sf::read_sf(layer = 'county')

  if (simplify){
    cn_county = cn_county |>
      rmapshaper::ms_simplify(keep = keep,keep_shapes = keep_shape,...) |>
      sf::st_cast('MULTIPOLYGON')
  }
  return(st_rename_geometry(cn_county,'geometry'))
}
