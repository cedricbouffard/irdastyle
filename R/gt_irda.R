#' Apply IRDA Theme to gt Objects
#'
#' This function applies a custom theme suitable for IRDA visualizations. It sets various graphical
#' parameters such as text size, font, and element colors.
#'
#' @return A gt object.
#' @export
#' @examples
#' p <- gt::gt(iris) |>
#'      theme_gt_irda()
# Theme function definition

theme_gt_irda <- function(x, ...){
  x |>
    gt::opt_table_font(font = "Calibri Light") |>

    gt::opt_row_striping()|>
    gt::tab_options(
      column_labels.background.color = colors["darkblue"],
      column_labels.font.weight =  "bold",
      row_group.font.weight =  "bold",
      row.striping.background_color = colors["lightgrey"],
      row_group.background.color = colors["green"],
      column_labels.font.size = 16,
      row_group.font.size = 22,
      table.font.names = "Calibri Light",
      table.font.weight ="bold"


    )
}
