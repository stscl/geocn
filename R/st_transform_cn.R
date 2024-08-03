#' @title coordinate conversion between GCJ02,BD09,WGS85
#' @note
#' `wgs` stands for `WGS84` coordinate system, `gcj` stands for `GCJ02` coordinate system,
#' and `bd` stands for `BD09` coordinate system.
#'
#' @param lon Longitude vector.
#' @param lat Latitude vector.
#' @param from (optional) Source CRS. Default is `gcj`.
#' @param to (optional) Target CRS. Default is `wgs`.
#'
#' @return A coordinate tibble in the target CRS.
#' @export
#'
#' @examples
#' lon = c(126.626510,126.625261,126.626378,126.626541,126.626721,126.627732,126.626510)
#' lat = c(45.731596,45.729834,45.729435,45.729676,45.729604,45.730915,45.731596)
#' st_transform_cn(lon,lat)
st_transform_cn = \(lon,lat,from = 'gcj',to = 'wgs'){
  transFun = paste0(from,'2',to)
  if (transFun == 'gcj2wgs') {
    cncoord = purrr::map2_dfr(lon,lat,gcj2wgs)
  } else if (transFun == 'wgs2gcj') {
    cncoord = purrr::map2_dfr(lon,lat,wgs2gcj)
  } else if (transFun == 'bd2gcj') {
    cncoord = purrr::map2_dfr(lon,lat,bd2gcj)
  } else if (transFun == 'gcj2bd') {
    cncoord = purrr::map2_dfr(lon,lat,gcj2bd)
  } else if (transFun == 'bd2wgs') {
    cncoord = purrr::map2_dfr(lon,lat,bd2wgs)
  } else if (transFun == 'wgs2bd') {
    cncoord = purrr::map2_dfr(lon,lat,wgs2bd)
  } else {
    stop('Please make sure `form` and `to` are one of `gcj`,`wgs` or `bd`!')
  }
  return(cncoord)
}
