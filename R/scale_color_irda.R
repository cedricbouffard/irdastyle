#' Scale Color with IRDA Palettes
#'
#' Provides a ggplot2 scale function for color aesthetics using IRDA color palettes.
#'
#' @param palette Name of the color palette to use, defaults to 'main'.
#' @param direction Direction to arrange colors, 1 for normal, -1 for reversed.
#' @param ... Other parameters passed to discrete_scale.
#' @return A ggplot2 scale function.
#' @export
#' @examples
#' ggplot(data = iris, aes(x = Sepal.Length, color = Species)) +
#'   geom_point() +
#'   scale_color_irda()
scale_color_irda <- function(palette = "main", direction = 1, ...) {
  ggplot2::discrete_scale("colour", "irda", palette = palette_gen(palette, direction), ...)
}
