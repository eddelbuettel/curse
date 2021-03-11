##' Random cursing words/phrases
##'
##' This function prints cursing words on the screen. The user can choose between
##' the original content or a 'polite' version.
##'
##' @param polite Logical. If FALSE (default), returns the one of the original cursing
##' phrases. If TRUE, the 'eff' word is blanked by three stars
##' @return A randomly sampled cursing word or phrase
##' @examples
##' curse(polite=TRUE)
curse <- function(polite = FALSE){
    if (is.null(.curse.env$phrases)) .curse.env$phrases <- .read.phrases()
    phrases <- .curse.env$phrases

    random.no <- sample(length(phrases) , size = 1)

    if (polite == TRUE){
        polite.phrases <- gsub(pattern = 'uck', replacement = '***' , x = phrases)
        out <- polite.phrases[random.no]
    } else
        out <- phrases[random.no]

    class(out) <- "curse"
    invisible(out)
}

##' @rdname curse
##' @param x Default object for \code{print} method
##' @param width Optional column width parameter
##' @param ... Other optional arguments
print.curse <- function(x, width = NULL, ...) {
    if (is.null(width)) width <- 0.9 * getOption("width")
    if (width < 10) stop("'width' must be greater than 10", call.=FALSE)
    invisible(sapply(strwrap(x, width), cat, "\n"))
}

.curse.env <- new.env()

.read.phrases <- function() {
    filename <- system.file("rawdata", "phrases.txt", package="curse")
    if (!file.exists(filename)) stop("Hm, file '", filename, "' is missing.", call.=FALSE)
    readLines(filename, encoding="UTF-8")
}
