#' projection factor
#' @noRD
pf_constant = 6378245.0

#' eccentricity
#' @noRD
ee_constant = 0.00669342162296594323

# source code from https://github.com/versey-sherry/ChinaCoordinate
# online tool for checking accuracy: https://tool.lu/coordinate/

#' transform latitude helper
#' @noRd
transformlat = \(x, y){
  ret = -100.0 + 2.0 * x + 3.0 * y + 0.2 * y * y + 0.1 * x * y + 0.2 * sqrt(abs(x))
  ret = ret + (20.0 * sin(6.0 * x * pi) + 20.0 * sin(2.0 * x * pi)) * 2.0 / 3.0
  ret = ret + (20.0 * sin(y * pi) + 40.0 * sin(y / 3.0 * pi)) * 2.0 / 3.0
  ret = ret + (160.0 * sin(y / 12.0 * pi) + 320 * sin(y * pi / 30.0)) * 2.0 / 3.0
  return(ret)
}

#' transform longitude helper
#' @noRd
transformlon = \(x, y){
  ret = 300.0 + x + 2.0 * y + 0.1 * x * x + 0.1 * x * y + 0.1 * sqrt(abs(x))
  ret = ret + (20.0 * sin(6.0 * x * pi) + 20.0 * sin(2.0 * x * pi)) * 2.0 / 3.0
  ret = ret + (20.0 * sin(x * pi) + 40.0 * sin(x / 3.0 * pi)) * 2.0 / 3.0
  ret = ret +  (150.0 * sin(x / 12.0 * pi) + 300.0 * sin(x / 30.0 * pi)) * 2.0 / 3.0
  return(ret)
}


#' @title quick check if the coordinates are in China
#' @details
#' regtangle assumption for now,could improve with ray casting algorithm or multiple rectangle
#' @references
#'
#' http://www.cnblogs.com/Aimeast/archive/2012/08/09/2629614.html
#' extreme points source: https://en.wikipedia.org/wiki/List_of_extreme_points_of_China
#'
#' @noRd
inchina = \(lon, lat){
  return(ifelse((lat >=20.333333 & lat <= 53.55) &
                  (lon >=73.816667 & lon <= 134.75), TRUE, FALSE))
}

#' from GCJ02 to WGS84
#' @noRd
gcj2wgs = \(gcjlon,gcjlat){
  if (inchina(gcjlon,gcjlat)){
    dlat = transformlat(gcjlon - 105, gcjlat -35)
    dlon = transformlon(gcjlon - 105, gcjlat -35)
    radlat = gcjlat/180 * pi
    magic = sin(radlat)
    magic = 1 - ee_constant*magic*magic
    dlat = (dlat*180)/((pf_constant*(1 - ee_constant))/magic*sqrt(magic)*pi)
    dlon = (dlon*180)/(pf_constant/sqrt(magic)*cos(radlat)*pi)
    wgs = c(lon = gcjlon -dlon, lat = gcjlat - dlat)
  }else{
    wgs = c(lon = gcjlon, lat = gcjlat)
  }
  return(wgs)
}

#' from WGS84 to GCJ02
#' @noRd
wgs2gcj = \(wgslon,wgslat){
  if(inchina(wgslon,wgslat)){
    dlat = transformlat(wgslon - 105, wgslat - 35)
    dlon = transformlon(wgslon - 105, wgslat - 35)
    radlat = wgslat/180*pi
    magic = sin(radlat)
    magic = 1 - ee_constant*magic*magic
    dlat = (dlat*180)/((pf_constant*(1 - ee_constant))/magic*sqrt(magic)*pi)
    dlon = (dlon*180)/(pf_constant/sqrt(magic)*cos(radlat)*pi)
    gcj = c(lon = wgslon + dlon,lat = wgslat + dlat)
  }else{
    gcj = c(lon = wgslon,lat = wgslat)
  }
  return(gcj)
}

#' from BD09 to GCJ02
#' @noRd
bd2gcj = \(bdlon,bdlat){
  x = bdlon - 0.0065
  y = bdlat - 0.006
  z = sqrt(x*x +y*y) - 0.00002*sin(y * pi * 3000.0 / 180.0)
  theta = atan2(y,x) - 0.000003*cos(x * pi * 3000.0 / 180.0)
  gcj = c(lon = z*cos(theta),lat = z*sin(theta))
  return(gcj)
}

#' from GCJ02 to BD09
#' @noRd
gcj2bd = \(gcjlon,gcjlat){
  x = gcjlon
  y = gcjlat
  z = sqrt(x*x + y*y) + 0.00002*sin(y * pi * 3000.0 / 180.0)
  theta = atan2(y, x) + 0.000003*cos(x * pi * 3000.0 / 180.0)
  bd = c(lon = z*cos(theta) + 0.0065,lat = z*sin(theta) + 0.006)
  return(bd)
}

#' from BD09 to WGS84
#' @noRd
bd2wgs = \(bdlon,bdlat){
  if (inchina(bdlon,bdlat)){
    tempcoord = bd2gcj(bdlon,bdlat)
    templon = tempcoord[1]
    templat = tempcoord[2]
    wgs = gcj2wgs(templon,templat)
  }else{
    wgs = c(lon = bdlon,lat = bdlat)
  }
  return(wgs)
}

#' from WGS84 to BD09
#' @noRd
wgs2bd = \(wgslon,wgslat){
  if(inchina(wgslon,wgslat)){
    tempcoord = wgs2gcj(wgslon,wgslat)
    templon = tempcoord[1]
    templat = tempcoord[2]
    bd = gcj2bd(templon,templat)
  }else{
    bd = c(lon = wgslon,lat = wgslat)
  }
  return(bd)
}
