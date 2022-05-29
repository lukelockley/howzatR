# Batting Average ---------------------------------------------------------

#' Batters Average
#'
#' Calculates a Batter's average over a number of innings.
#'
#' @param runs_scored A singular value of the runs scored by a batter.
#' @param no_dismissals A singular value of the number of times a batters has been dismissed within those innings.
#'
#' @return A singular value showing the Batter's average.
#' @export
#'
#' @examples
#' bat_avg(runs_scored = 568, no_dismissals = 9)
#' total_runs <- sum(c(45, 123, 56, 12, 192, 34, 78, 3, 25))
#' bat_avg(runs_scored = total_runs, no_dismissals = 9)
bat_avg <- function(runs_scored, no_dismissals) {
  runs_scored / no_dismissals
}


# Batting Strike Rate -----------------------------------------------------

#' Batters Strike Rate
#'
#' Calculates a Batter's Strike Rate over a number of innings.
#'
#' @param runs_scored A singular value of the runs scored by a batter.
#' @param balls_faced A singular value of balls faced by a batter.
#'                    Overs can be converted into `balls_faced` using \code{\link{overs_to_balls}}
#'
#' @return A singular value showing the Batter's Strike Rate per 100 Balls
#' @export
#'
#' @examples
#' bat_sr(runs_scored = 568, balls_faced = 600)
#' total_runs <- sum(c(45, 123, 56, 12, 192, 34, 78, 3, 25))
#' total_balls <- sum(c(50, 120, 78, 3, 226, 36, 45, 12, 30))
#' bat_sr(
#'   runs_scored = total_runs,
#'   balls_faced = total_balls
#' )
bat_sr <- function(runs_scored, balls_faced) {
  (runs_scored / balls_faced) * 100
}
