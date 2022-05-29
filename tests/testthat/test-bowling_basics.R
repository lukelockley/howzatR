
# bowl_econ ----------------------------------------------------

test_that("bowl_econ works", {
  expect_equal(bowl_econ(balls_bowled = 60, runs_conceded = 45), 4.5)
  expect_equal(bowl_econ(overs_to_balls(overs = 7.1), runs_conceded = 26) %>%
    round(digits = 2), 3.63)
})


# bowl_avg ----------------------------------------------------

test_that("bowl_avg works", {
  expect_equal(bowl_avg(runs_conceded = 50, wickets_taken = 6) %>%
    round(digits = 2), 8.33)
  expect_equal(bowl_avg(runs_conceded = 341, wickets_taken = 13) %>%
    round(digits = 2), 26.23)
})


# bowl_avg -----------------------------------------------------

test_that("bowl_avg works", {
  expect_equal(bowl_sr(balls_bowled = 3830, wickets_taken = 112) %>%
    round(digits = 1), 34.2)
  expect_equal(bowl_sr(balls_bowled = overs_to_balls(overs = 1651.2), wickets_taken = 243) %>%
    round(digits = 1), 40.8)
})
