% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme_irda.R
\name{theme_irda}
\alias{theme_irda}
\title{Apply IRDA Theme to ggplot Objects}
\usage{
theme_irda(..., base_size = 12)
}
\arguments{
\item{base_size}{Base text size for the plot elements (default is 12).}
}
\value{
A ggplot2 theme object.
}
\description{
This function applies a custom theme suitable for IRDA visualizations. It sets various graphical
parameters such as text size, font, and element colors.
}
\examples{
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  theme_irda() +
  scale_color_irda()
}
