#' Elsevier journal format.
#'
#' Format for creating submissions to Elsevier journals. Adapted from
#' \href{https://www.elsevier.com/authors/author-schemas/latex-instructions}{https://www.elsevier.com/authors/author-schemas/latex-instructions}.
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Additional arguments to \code{rmarkdown::pdf_document}
#'
#' @return R Markdown output format to pass to
#'   \code{\link[rmarkdown:render]{render}}
#'
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' draft("MyArticle.Rmd", template = "elsevier_article", package = "rticles")
#' }
#'
#' @export
elsevier_article <- function(...,
                             keep_tex = TRUE,
                             md_extensions = c("-autolink_bare_uris")) {
  inherit_pdf_document(...,
                       template = find_resource("elsevier_article", "template.tex"),
                       keep_tex = keep_tex,
                       md_extensions = md_extensions)
}


#' @rdname elsevier_article
#' @details
#' `elsevier_article2` uses `bookdown::pdf_document2` so supports the bookdown syntax.
elsevier_article2 <- function(
  ...,
  keep_tex = TRUE,
  md_extensions = "-autolink_bare_uris"
) {
  inherit_pdf_document2(
    ...,
    template = find_resource("elsevier_article", "template.tex"),
    keep_tex = keep_tex,
    md_extensions = md_extensions
  )
}
