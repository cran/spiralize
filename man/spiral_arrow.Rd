% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/graphics.R
\name{spiral_arrow}
\alias{spiral_arrow}
\title{Draw arrows in the spiral direction}
\usage{
spiral_arrow(
  x1,
  x2,
  y = get_track_data("ycenter", track_index),
  width = get_track_data("yrange", track_index)/3,
  arrow_head_length = unit(4, "mm"),
  arrow_head_width = width * 2,
  arrow_position = c("end", "start"),
  tail = c("normal", "point"),
  gp = gpar(),
  track_index = current_track_index()
)
}
\arguments{
\item{x1}{Start of the arrow.}

\item{x2}{End of the arrow.}

\item{y}{Y-location of the arrow.}

\item{width}{Width of the arrow. The value can be the one measured in the data coordinates or a \code{\link[grid:unit]{grid::unit()}} object.}

\item{arrow_head_length}{Length of the arrow head.}

\item{arrow_head_width}{Width of the arrow head.}

\item{arrow_position}{Position of the arrow. If the value is \code{"end"}, then the arrow head is drawn at \code{x = x2}. If the value
is \code{"start"}, then the arrow head is drawn at \code{x = x1}.}

\item{tail}{The shape of the arrow tail.}

\item{gp}{Graphical parameters.}

\item{track_index}{Index of the track.}
}
\value{
No value is returned.
}
\description{
Draw arrows in the spiral direction
}
\examples{
spiral_initialize()
spiral_track()
spiral_arrow(0.3, 0.6, gp = gpar(fill = "red"))
spiral_arrow(0.8, 0.9, gp = gpar(fill = "blue"), tail = "point", arrow_position = "start")
}
\seealso{
Note \code{\link[=spiral_segments]{spiral_segments()}} also supports drawing line-based arrows.
}
