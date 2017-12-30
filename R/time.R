## spell minute2time
#' @title minute2time
#' @description convert minutes to time of day
#' @author Alok Kumar <connect.alokkumar@gmail.com>
#' @export minute2time
#' @param x   minutes ex: 120
#' @return time of day
#' @examples
#' minute2time(120)
#' 2:00

minute2time <- function(x){


  hours <- trunc(x / 60)
  hours <- ifelse(nchar(hours)==1,paste0("0",hours),ifelse(nchar(hours)==0 || is.na(hours),paste0("0","0"),hours))
  mins <- x %% 60
  mins <- ifelse(mins<0,-mins,mins)
  mins <- round(as.numeric(mins))

  mins <- ifelse(nchar(mins)==1,paste0("0",mins),ifelse(nchar(mins)==0,paste0("0","0"),mins))

  minutes <- paste0(hours,":",mins)
  return(minutes)
}

## spell time2min
#' @title time2min
#' @description convert time of day (format hhmm) to minutes
#' @author Alok Kumar <connect.alokkumar@gmail.com>
#' @export time2min
#' @param x   minutes ex: 1122
#' @return time of day
#' @examples
#' time2min(1200)
#' 720
time2min <- function(x){
  hours <- trunc(x / 100)
  mins <- 100 * (x/100 - hours)
  minutes <- hours*60 + mins
  return(minutes)
}
