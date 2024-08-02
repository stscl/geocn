#' @title Rename sf object geometry name
#' @noRd
st_rename_geometry = \(g, name){
  current = attr(g, "sf_column")
  names(g)[names(g) == current] = name
  sf::st_geometry(g) = name
  return(g)
}

