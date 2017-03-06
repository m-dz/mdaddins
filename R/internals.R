
#' Regexp for quotations marks around the text (\code{x})
#'
#' Checks whether \code{x} is within quotation marks (either \' or \").
#' Internal function, not exported.
#'
#' @param x Text to check
#'
#' @return  \code{logical}, indicator whether \code{x} is within quotation marks
#'
#' @examples
#' check_for_quotes('\'C:\\Users\'')
#' check_for_quotes('C:\\Users')
check_for_quotes <- function(x) {
  grepl('^[\'\"].*[\'\"]$', x)
}