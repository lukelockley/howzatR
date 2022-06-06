
# Bowling Economy Rate ------------------------------------------------

#' Bowler Economy Rate
#'
#' Calculates bowlers' economy rate over six ball overs.
#'
#' @param balls_bowled number of balls bowled. Data in terms of six ball overs.
#'                     please convert to \code{\link{overs_to_balls}} to get it terms of `balls bowled`
#' @param runs_conceded total runs conceded by bowler across the overs bowled.
#'
#' @return Economy rate across the number of overs bowled.
#' @export
#'
#' @section Additional Information:
#' Bowling economy rate is average number of runs scored per over bowled.
#' A value of 9.5 indicates an average of 9.5 runs are scored per over bowled. The higher the number the more
#' detrimental is for the bowler. Runs scored through byes & leg byes are \strong{excluded} from runs conceded by the bowler,
#' however wides and no-balls are \strong{included} in the bowler's figures.
#' More info [here.](https://en.wikipedia.org/wiki/Economy_rate)
#'
#'
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
#' Calculates bowlers' average number of runs per wicket taken across overs bowled.
#'
#' @param runs_conceded total runs conceded by bowler across the overs bowled.
#' @param wickets_taken total wickets taken across the overs bowled.
#'
#' @return Average number of runs per wicket taken across overs bowled.
#' @export
#'
#' @section Additional Information:
#' A bowling average is the average number of runs conceded for wicket taken. A value of 15 indicates an average of
#' 15 runs were conceded per wicket taken. The lower the value, the better the average; the reserve of \code{\link{bat_avg}}
#' More info [here.](https://en.wikipedia.org/wiki/Bowling_average)
#'
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
#' Calculates bowlers' number of balls per wicket taken across overs bowled.
#'
#' @param balls_bowled number of balls bowled. Data in terms of six ball overs.
#'                     please convert to \code{\link{overs_to_balls}} to get it terms of `balls bowled`
#' @param wickets_taken total wickets taken across the overs bowled.
#'
#' @return Number of balls per wicket taken across overs bowled.
#' @export
#'
#' @section Additional Information:
#' A bowling strike rate is defined as the number of legal balls per wicket taken.
#' For example a value of 20 indicates 20 balls bowled are scored per wicket. This the reverse of
#' \code{\link{bat_sr}} where the lower the number the better.
#' More info [here.](https://en.wikipedia.org/wiki/Strike_rate#Bowling_strike_rate)
#'
#' @examples
#' bowl_sr(balls_bowled = 3830, wickets_taken = 112)
#' bowl_sr(balls_bowled = overs_to_balls(overs = 1651.2), wickets_taken = 243)
bowl_sr <- function(balls_bowled, wickets_taken) {
  balls_bowled / wickets_taken
}
