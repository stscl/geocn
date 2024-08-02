#' Load Global Country Boundaries
#' @details
#' When the `center` parameter is set to `west`, the map center is the Atlantic Ocean;
#' and when `center` is `east,` the map center is the Pacific Ocean.
#'
#' @param center (optional) Center must be `west` or `east`. Default is `west`.
#'
#' @return An sf object
#' @export
#'
#' @examples
#' load_world_country()
#'
load_world_country = \(center = 'west'){
  if (center %in% c('west','east')){
    world_country = system.file('extdata/world.gdb',package = 'geocn') |>
      sf::read_sf(layer = center)
    return(st_rename_geometry(world_country,'geometry'))
  } else {
    stop("center must be `west` or `east`")
  }
}

#' Loading Global Coastlines
#'
#' @return An sf object
#' @export
#'
#' @examples
#' load_world_coastline()
#'
load_world_coastline = \(){
  world_coastline = system.file('extdata/world.gdb',package = 'geocn') |>
    sf::read_sf(layer = 'coastline')
  return(st_rename_geometry(world_coastline,'geometry'))
}

#' Loading Global Rivers
#'
#' @return An sf object
#' @export
#'
#' @examples
#' load_world_river()
#'
load_world_river = \(){
  world_river = system.file('extdata/world.gdb',package = 'geocn') |>
    sf::read_sf(layer = 'river')
  return(st_rename_geometry(world_river,'geometry'))
}

#' Loading Global Continents
#'
#' @return An sf object
#' @export
#'
#' @examples
#' load_world_continent()
#'
load_world_continent = \(){
  world_continent = system.file('extdata/world.gdb',package = 'geocn') |>
    sf::read_sf(layer = 'continent')
  return(st_rename_geometry(world_continent,'geometry'))
}

#' Loading Global Lakes
#'
#' @return An sf object
#' @export
#'
#' @examples
#' load_world_lake()
#'
load_world_lake = \(){
  world_lake = system.file('extdata/world.gdb',package = 'geocn') |>
    sf::read_sf(layer = 'lake')
  return(st_rename_geometry(world_lake,'geometry'))
}

#' Loading Global Oceans
#'
#' @return An sf object
#' @export
#'
#' @examples
#' load_world_ocean()
#'
load_world_ocean = \(){
  world_ocean = system.file('extdata/world.gdb',package = 'geocn') |>
    sf::read_sf(layer = 'ocean')
  return(st_rename_geometry(world_ocean,'geometry'))
}
