#' Apply IRDA Theme to flextable Objects
#'
#' This function applies a custom theme suitable for IRDA visualizations. It sets various graphical
#' parameters such as text size, font, and element colors.
#'
#' @return A flextable object.
#' @export
#' @examples
#' p <- flextable::flextable(iris) |>
#'   flextable_irda()
#'
# Theme function definition
flextable_irda <- function(x, ...) {
  flextable::set_flextable_defaults(font.family = "Calibri Light")
  x=flextable::theme_zebra(x, odd_body = colors["lightgrey"])
  x <- flextable::colformat_double(x, big.mark = " ", decimal.mark = ",", digits = 1)
  x <- flextable::set_table_properties(x, layout = "fixed")
  x <- flextable::border_remove(x)
  x <- flextable::bg(x,bg = colors["darkblue"], part = "head")
  x <- flextable::bold(x, part = "all")
  x <- flextable::color(x,color = colors["darkblue"])
  x <- flextable::color(x,color = "white", part = "head")
  std_border <- officer::fp_border(width = 1, color = colors["black"])
  # x <- border_outer(x, part="all", border = std_border )
  x <- flextable::border_inner_h(x, border = std_border, part="all")
  x <- flextable::border_inner_v(x, border = std_border, part="all")
  x <- flextable::hline_bottom( x, border = std_border )
  x <- flextable::hline_top( x, border = std_border )
  x=flextable::font(x, fontname = "Calibri Light")
  flextable::autofit(x)
}
#
