
#' Parse selected "Windows" path to an "R-usable" one
#'
#' @return
#' @export
#' @importFrom rstudioapi getActiveDocumentContext
#' @importFrom magrittr '%>%'
#'
#' @examples
#' # Not run: test on the following texts:
#' C:\Users\me
#' 'C:\Users\me'
#' "C:\Users\me"
#' C:\\Users\\me
#' C:/Users/me
path_parse <- function() {
  getActiveDocumentContext()[['selection']][[1]][['text']] %>%
  { gsub('\\\\', '/', .) } %>%
  { gsub('//', '/', .) } %>%
  { ifelse(check_for_quotes(.), insertText(.), insertText(paste0('\'', ., '\''))) }
}

#' Insert \%>\% ("pipe").
#'
#' Call this function as an addin to insert \code{ \%>\% } at the cursor position.
#'
#' @export
#' @importFrom rstudioapi insertText
#'
#' @examples
#'
insert_pipe <- function() {
  insertText(" %>% ")
}

#' Insert assignment arrow ("<-")
#'
#' @export
#' @importFrom rstudioapi insertText
#'
#' @examples
insert_arrow <- function() {
  insertText(" <- ")
}
