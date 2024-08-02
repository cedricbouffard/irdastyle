#' Retrieve IRDA Color Palettes
#'
#' This function provides a selection of color palettes designed for IRDA visualizations.
#'
#' @param palette Name of the palette to retrieve, defaults to 'main'.
#' @return A vector of color hex codes.
#' @export
#' @examples
#' colors <- irda_palette("main")
irda_palette <- function(palette = "main") {
  palettes <- list(
    main = c(colors["darkblue"], colors["green"], colors["red"], colors["blue"], colors["yellow"], colors["bluegrey"], colors["brown"])
  )
  palettes[[palette]]
}
