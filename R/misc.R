
#' Parse selected "Windows" path to an "R-usable" one
#'
#' @return
#' @export
#' @importFrom rstudioapi getActiveDocumentContext
#' @importFrom magrittr '%>%'
#'
#' @examples
path_parse <- function() {
  getActiveDocumentContext()[['selection']][[1]][['text']] %>%
  { chartr('\\', '/', .) } %>%
  # { gsub('\\\\','/',.) } %>%
  { insertText(paste0('\'', ., '\'')) }
}

#' Insert \%>\%.
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
