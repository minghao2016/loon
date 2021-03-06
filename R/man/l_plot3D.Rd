% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/l_plot3D.R
\name{l_plot3D}
\alias{l_plot3D}
\alias{l_plot3D.default}
\title{Create an interactive loon 3d plot widget}
\usage{
l_plot3D(x, y, z, ...)

\method{l_plot3D}{default}(
  x,
  y = NULL,
  z = NULL,
  axisScaleFactor = 1,
  by = NULL,
  on,
  layout = c("grid", "wrap", "separate"),
  connectedScales = c("cross", "row", "column", "both", "x", "y", "none"),
  color = l_getOption("color"),
  glyph = l_getOption("glyph"),
  size = l_getOption("size"),
  active = TRUE,
  selected = FALSE,
  xlabel,
  ylabel,
  zlabel,
  title,
  showLabels = TRUE,
  showScales = FALSE,
  showGuides = TRUE,
  guidelines = l_getOption("guidelines"),
  guidesBackground = l_getOption("guidesBackground"),
  foreground = l_getOption("foreground"),
  background = l_getOption("background"),
  parent = NULL,
  ...
)
}
\arguments{
\item{x}{the x, y and z arguments provide the x, y and z coordinates for the plot.
         Any reasonable way of defining the coordinates is acceptable.
         See the function xyz.coords for details.

         If supplied separately, they must be of the same length.}

\item{y}{the y coordinates of points in the plot,
optional if x is an appropriate structure.}

\item{z}{the z coordinates of points in the plot,
optional if x is an appropriate structure.}

\item{...}{named arguments to modify plot states.}

\item{axisScaleFactor}{the amount to scale the axes at the centre of the rotation.
Default is 1.
    All numerical values are acceptable (0 removes the axes, < 0 inverts the direction of
    all axes.)}

\item{by}{loon plot can be separated by some variables into multiple panels.
This argument can take a \code{\link{formula}},
\code{n} dimensional state names (see \code{\link{l_nDimStateNames}})
an \code{n}-dimensional \code{vector} and \code{data.frame} or
a \code{list} of same lengths \code{n} as input.}

\item{on}{if the \code{x} or \code{by} is a formula,
an optional data frame containing the variables in the \code{x} or \code{by}.
If the variables are not found in data, they are taken from environment,
typically the environment from which the function is called.}

\item{layout}{layout facets as \code{'grid'}, \code{'wrap'} or \code{'separate'}}

\item{connectedScales}{Determines how the scales of the facets are to be connected depending
on which \code{layout} is used.  For each value of \code{layout}, the scales are connected
as follows:
\itemize{
\item{\code{layout = "wrap":}  Across all facets, when \code{connectedScales} is
   \itemize{
   \item{\code{"x"}, then  only the "x"  scales are connected}
   \item{\code{"y"}, then only the "y" scales are connected}
   \item{\code{"both"},  both "x" and "y" scales are connected}
   \item{\code{"none"},  neither "x" nor "y" scales are connected.}
   For any other value, only the "y" scale is connected.
   }
   }
\item{\code{layout = "grid":}  Across all facets, when \code{connectedScales} is
   \itemize{
   \item{\code{"cross"}, then only the scales in the same row and the same column are connected}
   \item{\code{"row"}, then both "x" and "y" scales of facets in the same row are connected}
   \item{\code{"column"}, then both "x" and "y" scales of facets in the same column are connected}
   \item{\code{"x"}, then all of the "x"  scales are connected (regardless of column)}
   \item{\code{"y"}, then all of the "y" scales are connected (regardless of row)}
   \item{\code{"both"},  both "x" and "y" scales are connected in all facets}
   \item{\code{"none"},  neither "x" nor "y" scales are connected in any facets.}
   }
   }
 }}

\item{color}{colours of points; colours are repeated
until matching the number points. Default is found using \code{\link{l_getOption}("color")}.}

\item{glyph}{the visual representation of the point. Argument values can be any of
\itemize{
\item{the string names of primitive glyphs:
   \itemize{
   \item{\code{circles}: "circle", "ccircle", "ocircle";}
   \item{\code{squares or boxes}: "square", "csquare", "osquare";}
   \item{\code{triangles}: "triangle", "ctriangle", "otriangle";}
   \item{\code{diamonds}: "diamond", "cdiamond", or "odiamond".}
   }
   Note that prefixes "c" and "o" may be thought of as closed and open, respectively.
   The set of values are returned by \code{\link{l_primitiveGlyphs}()}.
   }
\item{the string names of constructed glyphs:
   \itemize{
   \item{\code{text as glyphs}: see \code{\link{l_glyph_add_text}()}}
   \item{\code{point ranges}: see \code{\link{l_glyph_add_pointrange}()}}
   \item{\code{polygons}: see \code{\link{l_glyph_add_polygon}()}}
   \item{\code{parallel coordinates}: see \code{\link{l_glyph_add_serialaxes}()}}
   \item{\code{star or radial axes}: see \code{\link{l_glyph_add_serialaxes}()}}
   \item{\code{or any plot created using R}: see \code{\link{l_make_glyphs}()}}
   }
   Note that glyphs are constructed and given a stringname to be used in the inspector.
   }
}}

\item{size}{size of the symbol (roughly in terms of area).
Default is found using \code{\link{l_getOption}("size")}.}

\item{active}{a logical determining whether points appear or not
(default is \code{TRUE} for all points). If a logical vector is given of length
equal to the number of points, then it identifies which points appear (\code{TRUE})
and which do not (\code{FALSE}).}

\item{selected}{a logical determining whether points appear selected at first
(default is \code{FALSE} for all points). If a logical vector is given of length
equal to the number of points, then it identifies which points are (\code{TRUE})
and which are not (\code{FALSE}).}

\item{xlabel}{Label for the horizontal (x) axis. If missing,
one will be inferred from \code{x} if possible.}

\item{ylabel}{Label for the vertical (y) axis. If missing,
one will be inferred from \code{y} (or \code{x}) if possible.}

\item{zlabel}{Label for the third (perpendicular to the screen) (z) axis. If missing,
one will be inferred from \code{z} (or \code{x}) if possible.}

\item{title}{Title for the plot, default is an empty string.}

\item{showLabels}{logical to determine whether axes label (and title) should
be presented.}

\item{showScales}{logical to determine whether numerical scales should be presented on both axes.}

\item{showGuides}{logical to determine whether to present background guidelines to help determine locations.}

\item{guidelines}{colour of the guidelines shown when \code{showGuides = TRUE}.
Default is found using \code{\link{l_getOption}("guidelines")}.}

\item{guidesBackground}{colour of the background to the guidelines shown when
\code{showGuides = TRUE}. Default is found using \code{\link{l_getOption}("guidesBackground")}.}

\item{foreground}{foreground colour used by all other drawing.
Default is found using \code{\link{l_getOption}("foreground")}.}

\item{background}{background colour used for the plot.
Default is found using \code{\link{l_getOption}("background")}.}

\item{parent}{a valid Tk parent widget path. When the parent widget is
specified (i.e. not \code{NULL}) then the plot widget needs to be placed using
some geometry manager like \code{\link{tkpack}} or \code{\link{tkplace}} in
order to be displayed. See the examples below.}
}
\value{
if the argument \code{by} is not set, a \code{loon} widget will be returned;
else an \code{l_facet} object (a list) will be returned and each element is
a \code{loon} widget displaying a subset of interest.
}
\description{
\code{l_plot3D} is a generic function for creating interactive
  visualization environments for \R objects.
}
\details{
\ifelse{html}{
\out{<div style="background: #dff0d8; padding: 15px;"> To get started with loon it is recommended to read loons website
  which can be accessed via the <code>l_help()</code> function call. </div>
}}{
To get started with loon it is recommended to read loons website
  which can be accessed via the \code{l_help()} function call.
}


  \if{html}{ The general direct manipulation and interaction gestures are
  outlined in the following figures.

  Rotating

  Press 'R' to toggle rotation mode.
  When rotation mode is active, either use the below mouse gestures or arrow keys to rotate the plot.

  \figure{gestures_rotate.png}{options: alt="Rotate gestures"}

  The centre of the rotation can be changed by panning the plot.
  To reset the rotation, use the tripod icon in the plot inspector.

  Zooming and Panning

  \figure{gestures_zoom_pan.png}{options: alt="Zoom pan gestures"}

  Selecting Points/Objects

  \figure{gestures_select.png}{options: alt="Select gestures"}

  Moving Points on the Scatterplot Display

  \figure{gestures_move.png}{options: alt="Move gestures"}

  }

  NOTE: Although it is possible to programmatically add layers to an l_plot3D, these will not
  appear as part of the 3D plot's display. There is no provision at present to incorporate
  rotation of 3D geometric objects other than point glyphs.

The scatterplot displays a number of direct interactions with the
  mouse and keyboard, these include: rotating, zooming towards the mouse cursor using
  the mouse wheel, panning by right-click dragging and various selection
  methods using the left mouse button such as sweeping, brushing and
  individual point selection. See the documentation for \code{\link{l_plot3D}}
  for more details about the interaction gestures.
}
\examples{
if(interactive()){

with(quakes,
     l_plot3D(long, lat, depth, linkingGroup = "quakes")
)


with(l_scale3D(quakes),
     l_plot3D(long, lat, depth, linkingGroup = "quakes")
)

scaled_quakes <- l_scale3D(quakes)
with(scaled_quakes,
     l_plot3D(long, lat, depth, linkingGroup = "quakes")
)

with(scaled_quakes,
     l_plot3D(mag, stations, depth, linkingGroup = "quakes")
)

# Or together:
with(scaled_quakes,{
     l_plot3D(long, lat, depth, linkingGroup = "quakes")
     l_plot3D(mag, stations, depth, linkingGroup = "quakes")
     }
)

}
if(interactive()){

# default use as scatterplot

p1 <- with(quakes,
           l_plot3D(long, lat, depth)
           )

p2 <- with(quakes,
           l_plot3D(mag, stations, depth)
           )

# link the two plots p1 and p2
l_configure(p1, linkingGroup = "quakes", sync = "push")
l_configure(p2, linkingGroup = "quakes", sync = "push")

}
}
\seealso{
Turn interactive loon plot static \code{\link{loonGrob}}, \code{\link{grid.loon}}, \code{\link{plot.loon}}.

Other three-dimensional plotting functions: 
\code{\link{l_scale3D}()}
}
\concept{three-dimensional plotting functions}
