% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/graphics.R
\name{spiral_lines}
\alias{spiral_lines}
\title{Add lines to a track}
\usage{
spiral_lines(
  x,
  y,
  type = "l",
  gp = gpar(),
  baseline = "bottom",
  area = FALSE,
  track_index = current_track_index()
)
}
\arguments{
\item{x}{X-locations of the data points.}

\item{y}{Y-locations of the data points.}

\item{type}{Type of the line. Value should be one of "l" and "h". When the value is "h", vertical lines (or radial lines if you consider the polar coordinates) relative to the baseline will be drawn.}

\item{gp}{Graphical parameters.}

\item{baseline}{Baseline used when \code{type} is \code{"l"} or \code{area} is \code{TRUE}.}

\item{area}{Whether to draw the area under the lines? Note \code{gpar(fill = ...)} controls the filled colors of the areas.}

\item{track_index}{Index of the track.}
}
\value{
No value is returned.
}
\description{
Add lines to a track
}
\examples{
x = sort(runif(1000))
y = runif(1000)
spiral_initialize()
spiral_track()
spiral_lines(x, y)

spiral_initialize()
spiral_track()
spiral_lines(x, y, type = "h")

spiral_initialize()
spiral_track()
spiral_lines(x, y, area = TRUE, gp = gpar(fill = "red", col = NA))
}
