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
