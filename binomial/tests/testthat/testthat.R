context("Check for checkers")

#check_prob

test_that("check_prob with ok vectors", {

  expect_true(check_prob(0.5))
  expect_true(check_prob(1))
  expect_true(check_prob(0))
})


test_that("check_prob fails with invalid numbers", {

  expect_error(check_prob(2))
  expect_error(check_prob(-1))
})


test_that("check_prob fails with invalid lengths", {

  expect_error(check_prob(1,0.7))

})


#check_trials()

test_that("check_trials with ok vectors", {

  expect_true(check_trials(0.5))
  expect_true(check_trials(1))
  expect_true(check_trials(0))
})


test_that("check_trials fails with invalid numbers", {

  expect_error(check_trials(-1))
})


test_that("check_trials fails with invalid lengths", {

  expect_error(check_trials(1,2))

})


#check_success()

test_that("check_success with ok vectors", {

  expect_true(check_success(1,2))
  expect_true(check_success(0,5))
})


test_that("check_success fails with invalid numbers", {

  expect_error(check_success(-1,5))
  expect_error(check_success(-5,1))
})


test_that("check_success fails with invalid lengths", {

  expect_error(check_success(1))
  expect_error(check_success(1:5))
})





Context("Check for summary measures")

# aux_mean()

test_that("aux_mean with ok vectors", {

  expect_true(aux_mean(0,0.1))
  expect_true(caux_mean(4,0.5))
  expect_true(aux_mean(10,1))
})


test_that("aux_mean fails with invalid numbers", {

  expect_error(aux_mean(1,5))
  expect_error(aux_mean(-5,1))
  expect_error(aux_mean(5,-1))
})

test_that("aux_mean fails with invalid lengths", {

  expect_error(aux_mean(1))
})


# aux_variance()

test_that("aux_variance with ok vectors", {

  expect_true(aux_variance(0,0.1))
  expect_true(aux_variance(4,0.5))
  expect_true(aux_variance(10,1))
})


test_that("aux_variance fails with invalid numbers", {

  expect_error(aux_variance(1,5))
  expect_error(aux_variance(-5,1))
  expect_error(aux_variance(5,-1))
})

test_that("aux_variance fails with invalid lengths", {

  expect_error(aux_variance(1))
})


# aux_mode()

test_that("aux_mode with ok vectors", {

  expect_true(aux_mode(0,0.1))
  expect_true(aux_mode(4,0.5))
  expect_true(aux_mode(10,1))
})


test_that("aux_mode fails with invalid numbers", {

  expect_error(aux_mode(1,5))
  expect_error(aux_mode(-5,1))
  expect_error(aux_mode(5,-1))
})

test_that("aux_mode fails with invalid lengths", {

  expect_error(aux_mode(1))
})


# aux_skewness()

test_that("aux_skewness with ok vectors", {

  expect_true(aux_skewness(0,0.1))
  expect_true(aux_skewness(4,0.5))
  expect_true(aux_skewness(10,1))
})


test_that("aux_skewness fails with invalid numbers", {

  expect_error(aux_skewness(1,5))
  expect_error(aux_skewness(-5,1))
  expect_error(aux_skewness(5,-1))
})

test_that("aux_skewness fails with invalid lengths", {

  expect_error(aux_skewness(1))
})



# aux_kurtosis()

test_that("aux_kurtosis with ok vectors", {

  expect_true(aux_kurtosis(0,0.1))
  expect_true(aux_kurtosis(4,0.5))
  expect_true(aux_kurtosis(10,1))
})


test_that("aux_kurtosis fails with invalid numbers", {

  expect_error(aux_kurtosis(1,5))
  expect_error(aux_kurtosis(-5,1))
  expect_error(aux_kurtosis(5,-1))
})

test_that("aux_kurtosis fails with invalid lengths", {

  expect_error(aux_kurtosis(1))
})


Context("Check for binomial")

# bin_choose()

test_that("bin_choose with ok vectors", {

  expect_true(bin_choose(5,1))
  expect_true(bin_choose(5,0))
  expect_true(bin_choose(5,1:3))
})


test_that("bin_choose fails with invalid numbers", {

  expect_error(bin_choose(1,5))
  expect_error(bin_choose(-1,1))
  expect_error(bin_choose(5,-1))
})

test_that("bin_choose fails with invalid lengths", {

    expect_error(bin_choose(1))
})


# bin_probability()

test_that("bin_probability with ok vectors", {

  expect_true(bin_probability(2,5,0.5))
  expect_true(bin_probability(1:5,5,0.5))
  expect_true(bin_probability(55,100,0.45))
  expect_true(bin_probability(0,100,0.45))
  expect_true(bin_probability(0,0,0.45))
})


test_that("bin_probability fails with invalid numbers", {

  expect_error(bin_probability(5,1,0.5))
  expect_error(bin_probability(-1,1,0.5))
  expect_error(bin_probability(1,-1,0.5))
  expect_error(bin_probability(1,5,2))
  expect_error(bin_probability(1,5,-0.5))
})

test_that("bin_probability fails with invalid lengths", {

  expect_error(bin_probability(1))
  expect_error(bin_probability(1,5))
})


# bin_distribution()

test_that("bin_distribution with invalid vectors", {

  expect_true(bin_distribution(0,0.1))
  expect_true(bin_distribution(4,0.5))
  expect_true(bin_distribution(10,1))
})


test_that("bin_distribution fails with invalid numbers", {

  expect_error(bin_distribution(1,5))
  expect_error(bin_distribution(-5,1))
  expect_error(bin_distribution(5,-1))
})

test_that("bin_distribution fails with invalid lengths", {

  expect_error(bin_distribution(1))
})


# bin_cumulative()


test_that("bin_cumulative with ok vectors", {

  expect_true(bin_cumulative(5,0.5))

})


test_that("bin_cumulative fails with invalid numbers", {

  expect_error(bin_cumulative(1,5))
  expect_error(bin_cumulative(-5,1))
  expect_error(bin_cumulative(5,-1))
})

test_that("bin_cumulative fails with invalid lengths", {

  expect_error(bin_cumulative(1))
})













































