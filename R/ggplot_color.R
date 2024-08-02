irda_palette <- function(palette = "main", ...) {

  irda_palettes <- list(
    `main` = c(darkblue, green, red, blue,yellow, bluegrey, brown)
  )

  irda_palettes[[palette]]

}
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

scale_fill_irda <- function(palette = "main", direction = 1, ...) {

  ggplot2::discrete_scale(
    "fill", palette=palette_gen(palette, direction),
    ...
  )
}
scale_color_irda <- function(palette = "main", direction = 1, ...) {

  ggplot2::discrete_scale(
    "colour", palette=palette_gen(palette, direction),
    ...
  )
}
