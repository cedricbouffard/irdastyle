#' Apply IRDA Theme to ggplot Objects
#'
#' This function applies a custom theme suitable for IRDA visualizations. It sets various graphical
#' parameters such as text size, font, and element colors.
#'
#' @param base_size Base text size for the plot elements (default is 12).
#' @return A ggplot2 theme object.
#' @export
#' @examples
#'ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
#'   geom_point() +
#'   theme_irda() +
#'   scale_color_irda()
# Theme function definition
theme_irda <- function(..., base_size = 12) {
  windowsFonts(sans = windowsFont("Calibri Light"))
  ggplot2::theme(
    # plotting components

    ## drop minor gridlines
    panel.grid.minor = ggplot2::element_blank(),
    # change grid lines to gray
    panel.grid.major =  ggplot2::element_line(color = colors["darkblue"]),
    panel.grid.major.x =  ggplot2::element_blank(),
    # fill the plot and panel spaces with grey and remove border
    panel.background = ggplot2::element_rect(fill = NA, color = NA),
    plot.background = ggplot2::element_rect(fill = NA, color = NA),
    panel.border = ggplot2::element_blank(),
    # remove strip background
    strip.background = ggplot2::element_blank(),
    # adjust the margins of plots and remove axis ticks
    plot.margin = ggplot2::margin(0.5, 1, 0.5, 1, unit = "cm"),
    axis.ticks = ggplot2::element_blank(),
    # change text family, size, and adjust position of titles
    text = ggplot2::element_text(family = "sans", size = base_size),
    legend.position = "bottom",
    legend.text.align = 0,
    legend.background = ggplot2::element_blank(),
    legend.title = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank(),
    legend.text = ggplot2::element_text(
      size=ggplot2::rel(1.4)),
    axis.text = ggplot2::element_text(face = "bold", color = colors["black"], size = base_size),
    axis.title = ggplot2::element_text(face = "bold", size = ggplot2::rel(1.2)),
    axis.title.x = ggplot2::element_text(margin = ggplot2::margin(0.5, 0, 0, 0, unit = "cm")),
    axis.title.y = ggplot2::element_text(margin = ggplot2::margin(0, 0.5, 0, 0, unit = "cm"), angle =90),
    plot.title = ggplot2::element_text(face = "bold", size = ggplot2::rel(1.67), hjust = 0),
    plot.title.position = "plot",
    plot.subtitle = ggplot2::element_text(size = ggplot2::rel(1.3333), margin = ggplot2::margin(0.2, 0, 1, 0, unit = "cm"), hjust = 0),
    plot.caption = ggplot2::element_text(color = colors["green"], size = ggplot2::rel(.8), margin = ggplot2::margin(1, 0, 0, 0, unit = "cm"), hjust = 1),
    strip.text = ggplot2::element_text(size = ggplot2::rel(1.33), face = "bold"),
    ...
  )
}
