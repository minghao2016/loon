% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/l_plot.R, R/l_plot_decomposed_ts.R,
%   R/l_plot_density.R, R/l_plot_map.R, R/l_plot_stl.R
\name{l_plot}
\alias{l_plot}
\alias{l_plot.default}
\alias{l_plot.decomposed.ts}
\alias{l_plot.density}
\alias{l_plot.map}
\alias{l_plot.stl}
\title{Create an interactive loon plot widget}
\usage{
l_plot(x, y, ...)

\method{l_plot}{default}(
  x,
  y = NULL,
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

\method{l_plot}{decomposed.ts}(
  x,
  y = NULL,
  xlabel = NULL,
  ylabel = NULL,
  title = NULL,
  tk_title = NULL,
  color = l_getOption("color"),
  size = l_getOption("size"),
  linecolor = l_getOption("color"),
  linewidth = l_getOption("linewidth"),
  linkingGroup,
  showScales = TRUE,
  showGuides = TRUE,
  showLabels = TRUE,
  ...
)

\method{l_plot}{density}(
  x,
  y = NULL,
  xlabel = NULL,
  ylabel = NULL,
  title = NULL,
  linewidth = l_getOption("linewidth"),
  linecolor = l_getOption("color"),
  ...
)

\method{l_plot}{map}(x, y = NULL, ...)

\method{l_plot}{stl}(
  x,
  y = NULL,
  xlabel = NULL,
  ylabel = NULL,
  title = NULL,
  tk_title = NULL,
  color = l_getOption("color"),
  size = l_getOption("size"),
  linecolor = l_getOption("color"),
  linewidth = l_getOption("linewidth"),
  linkingGroup,
  showScales = TRUE,
  showGuides = TRUE,
  showLabels = TRUE,
  ...
)
}
\arguments{
\item{x}{the coordinates of points in the \code{\link{l_plot}}.
Alternatively, a single plotting structure (see the function \code{\link{xy.coords}} for details),
\code{\link{formula}}, or any \R object (e.g. \code{\link{density}},\code{\link{stl}}, etc)
is accommodated.}

\item{y}{the y coordinates of points in the \code{\link{l_plot}}, optional if x is an
appropriate structure.}

\item{...}{named arguments to modify plot states. See \code{\link{l_info_states}}
of any instantiated \code{l_plot} for examples of names and values.}

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

\item{tk_title}{provides an alternative window name to Tk's \code{wm title}. If \code{NULL}, \code{stl} will be used.}

\item{linecolor}{line colour of all time series.
Default given by \code{\link{l_getOption}("color")}.}

\item{linewidth}{line width of all time series (incl. original and decomposed components.
Default given by \code{\link{l_getOption}("linewidth")}.}

\item{linkingGroup}{string giving the linkingGroup for all plots. If missing,
a default \code{linkingGroup} will be determined from deparsing the input \code{x}.}
}
\value{
\itemize{
\item{
The input is a \code{stl} or a \code{decomposed.ts} object,
a structure of class \code{"l_ts"} containing four loon plots
each representing a part of the decomposition
by name: "original", "trend", "seasonal", and "remainder"
}
\item{
The input is a vector, formula, data.frame, ...
\itemize{
\item{\code{by = NULL}: a \code{loon} widget will be returned}
\item{\code{by} is not \code{NULL}: an \code{l_facet} object (a list) will be returned and
each element is a \code{loon} widget displaying a subset of interest.}
}
}
}
}
\description{
\code{l_plot} is a generic function for creating an interactive
  visualization environments for R objects.
}
\details{
Like \code{\link{plot}} in \R, \code{\link{l_plot}} is
the generic plotting function for objects in loon.
The default method \code{\link{l_plot.default}} produces the interactive
scatterplot in loon.
This is the workhorse of `loon` and is often a key part of many
other displays (e.g. \code{\link{l_pairs}} and \code{\link{l_navgraph}}).

For example, the  methods include \code{l_plot.default} (the basic interactive scatterplot),
\code{l_plot.density} (layers output of \code{\link{density}} in an empty scatterplot),
 \code{l_plot.map} (layers a map in an empty scatterplot), and
\code{l_plot.stl} (a compound display of the output of \code{\link{stl}}).

A complete list is had from \code{methods(l_plot)}.

\ifelse{html}{
\out{<div style="background: #dff0d8; padding: 15px;"> To get started with loon
  it is recommended to follow the introductory loon vignette <code>vignette(topic = "introduction", package  = "loon")</code>
  and to explore loon's website accessible via <code>l_help()</code>. </div>
}}{
To get started with loon it is recommended to follow the introductory loon vignette
\code{vignette(topic = "introduction", package  = "loon")}
  and to explore loon's website accessible via \code{l_help()}.
}


  \if{html}{ The general direct manipulation and interaction gestures are
  outlined in the following figures.

  Zooming and Panning

  \figure{gestures_zoom_pan.png}{options: alt="Zoom pan gestures"}

  Selecting Points/Objects

  \figure{gestures_select.png}{options: alt="Select gestures"}

  Moving Points on the Scatterplot Display

  \figure{gestures_move.png}{options: alt="Move gestures"}

  }

The scatterplot displays a number of direct interactions with the
mouse and keyboard, these include: zooming towards the mouse cursor using
the mouse wheel, panning by right-click dragging and various selection
methods using the left mouse button such as sweeping, brushing and
individual point selection. See the documentation for \code{\link{l_plot}}
for more details about the interaction gestures.


Some arguments to modify layouts can be passed through,
e.g. "separate", "ncol", "nrow", etc. Check \code{\link{l_facet}}
to see how these arguments work.
}
\examples{
if(interactive()) {
########################## l_plot.default ##########################
# default use as scatterplot

p1 <- with(iris, l_plot(Sepal.Length, Sepal.Width, color=Species,
                        title = "First plot"))

# The names of the info states that can be
# accessed or set.  They can also be given values as
# arguments to l_plot.default()
names(p1)
p1["size"] <- 10

p2 <- with(iris, l_plot(Petal.Length ~ Petal.Width,
                        linkingGroup="iris_data",
                        title = "Second plot",
                        showGuides = FALSE))
p2["showScales"] <- TRUE

# link first plot with the second plot requires
# l_configure to coordinate the synchroniztion
l_configure(p1, linkingGroup = "iris_data", sync = "push")

p1['selected'] <- iris$Species == "versicolor"
p2["glyph"][p1['selected']] <- "cdiamond"

gridExtra::grid.arrange(loonGrob(p1), loonGrob(p2), nrow = 1)

# Layout facets
### facet wrap
p3 <- with(mtcars, l_plot(wt, mpg, by = cyl, layout = "wrap"))
# it is equivalent to
# p3 <- l_plot(mpg~wt, by = ~cyl, layout = "wrap", on = mtcars)

### facet grid
p4 <- l_plot(x = 1:6, y = 1:6,
             by = size ~ color,
             size = c(rep(50, 2), rep(25, 2), rep(50, 2)),
             color = c(rep("red", 3), rep("green", 3)))

# Use with other tk widgets
tt <- tktoplevel()
tktitle(tt) <- "Loon plots with custom layout"

p1 <- l_plot(parent=tt, x=c(1,2,3), y=c(3,2,1))
p2 <- l_plot(parent=tt, x=c(4,3,1), y=c(6,8,4))

tkgrid(p1, row=0, column=0, sticky="nesw")
tkgrid(p2, row=0, column=1, sticky="nesw")

tkgrid.columnconfigure(tt, 0, weight=1)
tkgrid.columnconfigure(tt, 1, weight=1)

tkgrid.rowconfigure(tt, 0, weight=1)
########################## l_plot.decomposed.ts ##########################
decompose <- decompose(co2)
p <- l_plot(decompose, title = "Atmospheric carbon dioxide over Mauna Loa")
# names of plots in the display
names(p)
# names of states associated with the seasonality plot
names(p$seasonal)
# which can be set
p$seasonal['color'] <- "steelblue"

########################## l_plot.stl ##########################
co2_stl <- stl(co2, "per")
p <- l_plot(co2_stl, title = "Atmospheric carbon dioxide over Mauna Loa")
# names of plots in the display
names(p)
# names of states associated with the seasonality plot
names(p$seasonal)
# which can be set
p$seasonal['color'] <- "steelblue"
########################## l_plot.density ##########################
# plot a density estimate
set.seed(314159)
ds <- density(rnorm(1000))
p <- l_plot(ds,  title = "density estimate",
            xlabel = "x", ylabel = "density",
            showScales = TRUE)

########################## l_plot.map ##########################
if (requireNamespace("maps", quietly = TRUE)) {
   p <- l_plot(maps::map('world', fill=TRUE, plot=FALSE))
}
}

}
\seealso{
Turn interactive loon plot static \code{\link{loonGrob}}, \code{\link{grid.loon}}, \code{\link{plot.loon}}.

Density layer \code{\link{l_layer.density}}

Map layer \code{\link{l_layer}}, \code{\link{l_layer.map}},
  \code{\link[maps]{map}}

Other loon interactive states: 
\code{\link{l_hist}()},
\code{\link{l_info_states}()},
\code{\link{l_serialaxes}()},
\code{\link{l_state_names}()},
\code{\link{names.loon}()}
}
\concept{loon interactive states}
\concept{two-dimensional plotting functions}
