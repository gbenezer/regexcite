
#' str_split_one: R Regex Function by Jennifer Bryan (Reproduced Here)
#'
#' @details
#' This function, as well as the full package surrounding it,
#' are both reproductions from the first chapter of Hadley Wickham and Jennifer
#' Bryant's R Packages (2e) online book (https://r-pkgs.org/whole-game.html).
#' The function itself, authored by Jennifer Bryan, is meant to take a
#' character vector of at most one string 'string' and separate it into parts
#' delimited by separator 'pattern' with maximum length of the output character
#' vector defined by parameter 'n'.
#'
#' The default behavior of the string::str_split function is
#' to return a list of length 1 containing a character vector of the delimited
#' elements of the input character vector. regexcite::str_split_one encapsulates
#' both the call to stringr::str_split() as well as
#' the common follow-up operation of extracting the desired character vector.
#'
#' This version of the file has been modified to use stringr instead of base R.
#'
#'
#' @param string
#' A character vector with at most one element, the string to be split
#'
#' @inheritParams stringr::str_split
#'
#' @return
#' the character vector resulting from splitting input 'string' on
#' delimiter 'pattern' with the returned character vector of maximum length 'n'
#'
#' @export
#'
#' @examples
#' x <- "Spam,Spam,Spam,Egg,and,Spam"
#' str_split_one(x, pattern = ",")
#' str_split_one(x, pattern = ",", n = 2)
#'
#' y <- "192.168.0.1"
#' str_split_one(y, pattern = stringr::fixed("."))

str_split_one <- function(string, pattern, n = Inf) {
  stopifnot(is.character(string), length(string) <= 1)
  if (length(string) == 1) {
    stringr::str_split(string = string, pattern = pattern, n = n)[[1]]
  } else {
    character()
  }
}
