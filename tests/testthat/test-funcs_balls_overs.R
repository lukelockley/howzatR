
# Balls to overs tests
test_that("balls_to_overs work", {
expect_equal(balls_to_overs(balls = 10), 1.4)
expect_equal(balls_to_overs(balls = 10*6), 10)
})

# Overs to balls tests
test_that("overs_to_ work", {
  expect_equal(overs_to_balls(overs = 10.2), 62)
  expect_equal(overs_to_balls(overs = 10*6), 60*6)
})
