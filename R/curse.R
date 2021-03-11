#' Random cursing words/phrases
#'
#' This function prints cursing words on the screen. The user can choose between
#' the original content or a 'polite' version.
#'
#' @param polite Logical. If FALSE (default), returns the one of tge original cursing
#' phrases. If TRUE, the 'eff' word is blanked by three stars
#' @return A randomly sampled cursing word or phrase
#' @export
curse <- function(polite = FALSE){
    if (is.null(.curses.env$phrases)) .curses.env$phrases <- .read.phrases()
    phrases <- .curses.env$phrases

    random.no <- sample(length(phrases) , size = 1)

    if (polite == TRUE){
        polite.phrases <- gsub(pattern = 'uck', replacement = '***' , x = phrases)
        out <- polite.phrases[random.no]
    } else
        out <- phrases[random.no]

    cat(out, "\n")
}

.curse.env <- new.env()

.read.phrases <- function() {
    filename <- system.file("curse", "rawdata", "phrases.txt", package="curse")
    if (!file.exists(filename)) stop("Hm, file", filename, "is missing.", call.=FALSE)
    readLines(filename, encoding="UTF-8")
}
