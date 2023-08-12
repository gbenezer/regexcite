
#' strsplit1: R Packages Function by Jennifer Bryan (Reproduced Here)
#'
#' @details
#' This function, as well as the full package surrounding it,
#' are both reproductions from the first chapter of Hadley Wickham's
#' R Packages (2e) online book (https://r-pkgs.org/whole-game.html).
#' The function itself, authored by Jennifer Bryan, is meant to take a
#' single string 'x' and separate it into parts delimited by separator
#' 'split'. The default behavior of the base R strsplit function is
#' to return a list of length 1 containing the desired split string vector.
#' strsplit1 encapsulates both the call to base R strsplit as well as the
#' common follow-up operation of extracting the desired string vector.
#'
#'
#' @param x the string to be split
#' @param split the character delimiting the input string x
#'
#' @return
#' the string vector resulting from splitting string 'x' on delimiter 'split'
#'
#' @export
#'
#' @examples
#' string <- "Spam,Spam,Spam,Egg,and,Spam"
#' strsplit1(x = string, split = ",")

strsplit1 <- function(x, split) {
  strsplit(x, split = split)[[1]]
}
