% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/track.R
\name{current_track_index}
\alias{current_track_index}
\alias{set_current_track}
\alias{n_tracks}
\alias{is_in_track}
\title{Helper functions for handling tracks}
\usage{
current_track_index()

set_current_track(track_index)

n_tracks()

is_in_track(x, y, track_index = current_track_index())
}
\arguments{
\item{track_index}{The index of the track.}

\item{x}{X-location of data points.}

\item{y}{Y-location of data points.}
}
\value{
\code{current_track_index()} returns the index of the current track.

\code{set_current_track()} returns no value.

\code{n_tracks()} returns the number of available tracks.

\code{is_in_track()} returns a logical vector.
}
\description{
Helper functions for handling tracks
}
\details{
\code{is_in_track()} tests whether data points are inside a certain track.
}
