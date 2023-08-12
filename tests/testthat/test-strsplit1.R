test_that("strsplit1 splits a string", {
  expect_equal(strsplit1(x = "spam,spam,spam,egg,and,spam",
                         split = ","),
               c("spam", "spam", "spam", "egg", "and", "spam"))
})
# TODO

# test that non-string inputs fail predictably

# test that if the separator does not exist in the string,
# the input string is the output string

# test that if no separator is supplied, the input string is the output string

# use covr package to assess test coverage
