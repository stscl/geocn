#' List all data sets available in the geocn package
#'
#' @description
#' Returns a tibble with all datasets available in the geocn package.
#'
#' @return A tibble
#'
#' @export
#'
#' @examples
#' list_geocn()
#'
list_geocn = \(){
  geocn_datasets = tibble::tibble(
    functions = c(
      "load_cn_province",
      "load_cn_city",
      "load_cn_county",
      "load_cn_border",
      "load_cn_landborder",
      "load_cn_coastline",
      "load_cn_tenline",
      "load_cn_landcoast",
      "load_world_country",
      "load_world_continent",
      "load_world_coastline",
      "load_world_ocean",
      "load_world_lake",
      "load_world_river",
      "load_loess_plateau",
      "load_weihe_basin"),
    results = c(
      "Province-Level Administrative Units in China",
      "City-Level Administrative Units in China",
      "County-Level Administrative Units in China",
      "China's Land Border Line and the 10-dash line of the South China Sea",
      "China's Land Border",
      "Coastline of China",
      "10-dash line of the South China Sea",
      "China's Land Border and Coastline",
      "Global Country Boundaries",
      "Global Continents",
      "Global Coastlines",
      "Global Oceans",
      "Global Lakes",
      "Global Rivers",
      "Loess Plateau Boundary",
      "Weihe River Basin Boundary")
    )
  return(geocn_datasets)
}
