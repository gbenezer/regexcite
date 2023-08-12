# Test that the function outputs a typical input into the expected output
test_that("strsplit1 splits a string", {
  expect_equal(strsplit1(x = "spam,spam,spam,egg,and,spam", split = ","),
               c("spam", "spam", "spam", "egg", "and", "spam"))
})

# Test that the function throws an error if the input is not a singular string
# but a vector of strings
test_that("str_split_one() errors if input length > 1", {
  expect_error(str_split_one(c("a,b","c,d"), ","))
})

# Test that the function inherits the features of the stringr::str_split()
# function as expected
test_that("str_split_one() exposes features of stringr::str_split()", {
  expect_equal(str_split_one("a,b,c", ",", n = 2), c("a", "b,c"))
  expect_equal(str_split_one("a.b", stringr::fixed(".")), c("a", "b"))
})
