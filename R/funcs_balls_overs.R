# Balls to Overs ----------------------------------------------------------

#' Convert Balls to Overs (Six Ball)
#'
#' Convert numbers of balls as it equates in terms of six ball overs
#'
#' @param balls number of balls bowled/faced.
#'
#' @return number of six ball overs this equates too
#' @export
#'
#' @examples
#' balls_to_overs(balls = 6)
#' balls_to_overs(balls = 17)
#'
balls_to_overs <- function(balls) {
  balls%/%6 + (balls%%6)/10
}


# Overs to Balls ----------------------------------------------------------

#' Convert Overs (Six Ball) to Balls
#'
#' @param overs number of six ball overs bowled/faced
#'
#' @return number of six ball overs this equates too
#' @export
#'
#' @examples
#' overs_to_balls(overs = 8.2)
#' overs_to_balls(overs = 10)

overs_to_balls <- function(overs) {
  (overs%/%1)*6 + (overs%%1)*10

}



