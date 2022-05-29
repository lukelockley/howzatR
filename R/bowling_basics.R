
# Bowling Economy Rate ------------------------------------------------

#' Bowler Economy Rate
#'
#' Calculates bowlers' economy rate over six ball overs
#'
#' @param balls_bowled number of balls bowled. Data in terms of six ball overs
#'                     please convert to \code{\link{overs_to_balls}} to get it terms of `balls bowled`
#' @param runs_conceded total runs conceded by bowler across the overs bowled
#'
#' @return Economy Rate across the number of overs bowled
#' @export
#'
#' @examples
#' bowl_econ(balls_bowled = 60, runs_conceded = 45)
#' bowl_econ(
#'   balls_bowled = overs_to_balls(overs = 7.1),
#'   runs_conceded = 26
#' )
bowl_econ <- function(balls_bowled, runs_conceded) {
  6 * (runs_conceded / balls_bowled)
}


# Bowling Average ---------------------------------------------------------

#' Bowler Average
#'
#' Calculates Bowlers' Average number of runs per wicket taken across overs bowled
#'
#' @param runs_conceded total runs conceded by bowler across the overs bowled
#' @param wickets_taken total wickets taken across the overs bowled
#'
#' @return Average number of runs per wicket taken across overs bowled
#' @export
#'
#' @examples
#' bowl_avg(runs_conceded = 50, wickets_taken = 6)
#' bowl_avg(runs_conceded = 341, wickets_taken = 13)
bowl_avg <- function(runs_conceded, wickets_taken) {
  runs_conceded / wickets_taken
}


# Bowling Strike Rate -----------------------------------------------------

#' Bowler Strike Rate
#'
#' Calculates Bowlers' number of balls per wicket taken across overs bowled
#'
#' @param balls_bowled number of balls bowled. Data in terms of six ball overs
#'                     please convert to \code{\link{overs_to_balls}} to get it terms of `balls bowled`
#' @param wickets_taken total wickets taken across the overs bowled
#'
#' @return Number of balls per wicket taken across overs bowled
#' @export
#'
#' @examples
#' bowl_sr(balls_bowled = 3830, wickets_taken = 112)
#' bowl_sr(balls_bowled = overs_to_balls(overs = 1651.2), wickets_taken = 243)
bowl_sr <- function(balls_bowled, wickets_taken) {
  balls_bowled / wickets_taken
}
