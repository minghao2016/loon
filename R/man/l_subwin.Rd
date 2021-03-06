% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/l_subwin.R
\name{l_subwin}
\alias{l_subwin}
\title{Create a child widget path}
\usage{
l_subwin(parent, name = "w")
}
\arguments{
\item{parent}{parent widget path}

\item{name}{child name}
}
\value{
widget path name as a string
}
\description{
This function is similar to \code{.Tk.subwin} except that does
  not the environment of the "tkwin" object to keep track of numbering the
  subwidgets. Instead it creates a widget path (parent).looni, where i is the
  smallest integer for which no widget exists yet.
}
