#' Random cursing words/phrases
#'
#' This function prints cursing words on the screen. The user can choose between
#' the original content or a 'polite' version.
#'
#' @param polite Logical. If FALSE (default), returns the original cursing phrases. If TRUE, the 'F' word is omitted
#' @return A random cursing word/phrase
#' @export

curse <-
  function(polite = FALSE){
    random.no <- sample(length(phrases) , size = 1)
    
    if (polite == TRUE){
      polite.phrases <- gsub(pattern = 'uck', replacement = '***' , x = phrases)
    out <- polite.phrases[random.no]}
    
    else 
      out <- phrases[random.no]
    
    
    cat ( out, "\n" )
    
  }
