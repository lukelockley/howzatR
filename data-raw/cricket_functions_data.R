
# code to prepare `cricket_functions_data` datasets goes here --------------

# Dataset Batters ---------------------------------------------------------

bat_raw_df <- data.frame(
  Player = c("A. Green", "B. Brown", "C. Blue"),
  Inns = c(7, 8, 6),
  NO = c(1, 3, 0),
  Runs_Scored = c(140, 156, 111),
  Balls_Faced = c(220, 100, 76)
)

usethis::use_data(bat_raw_df, overwrite = TRUE)


# Bowlers Dataset ---------------------------------------------------------

bowl_raw_df <- data.frame(
  Player = c("E. Apple", "F. Pear", "G. Grape"),
  Balls_Bowled = c(560, 754, 234),
  Runs_Conceded = c(235, 567, 270),
  Wickets = c(15, 21, 7)
)

usethis::use_data(bowl_raw_df, overwrite = TRUE)
