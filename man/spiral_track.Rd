% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/track.R
\name{spiral_track}
\alias{spiral_track}
\title{Add a new track or move to an existed track}
\usage{
spiral_track(
  ylim = c(0, 1),
  height = 0.8,
  background = TRUE,
  background_gp = gpar(fill = "#EEEEEE"),
  reverse_y = FALSE,
  gradient = FALSE,
  track_index = current_track_index() + 1
)
}
\arguments{
\item{ylim}{Data range of the y-locations.}

\item{height}{Height of the track. The value can be the fraction of the distance of the two neighbour spiral loops. The value can also be a \code{\link[grid:unit]{grid::unit()}} object.}

\item{background}{Whether to draw the background of the track, i.e. border and filled color of background.}

\item{background_gp}{Graphical parameters of the background.}

\item{reverse_y}{Whether reverse the direction of y-axis (i.e. pointing to the center of the spiral)?}

\item{gradient}{Whether draw the background in gradient? The value can be a positive integer of the number of gradients from \code{background_gp$fill} to white.}

\item{track_index}{Index of the track.}
}
\value{
No value is returned.
}
\description{
Add a new track or move to an existed track
}
\details{
If the track is already existed, the function simply mark the track as the current track and does nothing else.
}
\examples{
spiral_initialize()
spiral_track(height = 0.8)

spiral_initialize()
spiral_track(height = 0.4, background_gp = gpar(fill = "red"))
spiral_track(height = 0.2, background_gp = gpar(fill = "green"))
spiral_track(height = 0.1, background_gp = gpar(fill = "blue"))

spiral_initialize()
spiral_track(height = 0.8, gradient = TRUE) # by default 10 gradients

spiral_initialize()
spiral_track(height = 0.8, background_gp = gpar(fill = "red"), gradient = 5)
}
