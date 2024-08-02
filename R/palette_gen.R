#' Generate a Color Palette Function
#'
#' This function generates a function that returns a specified number of colors from a given palette,
#' potentially reversing the direction of the color sequence.
#'
#' @param palette Name of the palette to use, defaults to 'main'.
#' @param direction Direction to arrange colors, 1 for normal, -1 for reversed.
#' @return A function that generates color palettes.
#' @export
#' @examples
#' color_function <- palette_gen("main")
#' color_function(3)
palette_gen <- function(palette = "main", direction = 1) {

  function(n) {

    if (n > length(irda_palette(palette)))
      warning("Not enough colors in this palette!")

    else {

      all_colors <- irda_palette(palette)

      all_colors <- unname(unlist(all_colors))

      all_colors <- if (direction >= 0) all_colors else rev(all_colors)

      color_list <- all_colors[1:n]

    }
  }
}
