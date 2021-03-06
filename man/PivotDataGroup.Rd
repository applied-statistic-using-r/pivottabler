% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PivotDataGroup.R
\docType{class}
\name{PivotDataGroup}
\alias{PivotDataGroup}
\title{A class that defines a row or column heading.}
\format{\code{\link{R6Class}} object.}
\usage{
PivotDataGroup
}
\value{
Object of \code{\link{R6Class}} with properties and methods that help define the row and column headings in a pivot table.
}
\description{
The PivotDataGroup class represents one row or column heading in a pivot table.  PivotDataGroups have a parent-child relationship, i.e. each PivotDataGroup can have one or more child PivotDataGroups.
}
\section{Fields}{

\describe{
\item{\code{parentGroup}}{Parent PivotDataGroup.}

\item{\code{parentPivot}}{Owning pivot table.}

\item{\code{rowOrColumn}}{"row" or "column" indicating which axis this data group exists on.}

\item{\code{caption}}{The friendly display name for this data group.}

\item{\code{variableName}}{The name of the related column in the data frame(s) of the pivot table.}

\item{\code{values}}{The data value(s) which this data group represents.  Can be a vector of values.}

\item{\code{sortValue}}{The data value used when sorting the data groups.}

\item{\code{isTotal}}{Whether this data group is a total group.}

\item{\code{visualTotals}}{Whether visual totals are enabled for this data group.}

\item{\code{calculationGroupName}}{The name of the calculation group applied to this data group.}

\item{\code{calculationName}}{The name of the calculation applied to this data group.}

\item{\code{rowColumnNumber}}{The row or column number of this data group, i.e. where it exists in the pivot table.}

\item{\code{baseStyleName}}{The name of the style applied to this data group (i.e. this row/column heading).  The style must exist in the PivotStyles object associated with the PivotTable.}

\item{\code{style}}{A PivotStyle object that can apply overrides to the base style for this data group.}

\item{\code{isRendered}}{Whether or not this data group has been rendered yet (used as part of the rendering routines).}
}}

\section{Methods}{

\describe{
  \item{Documentation}{For more complete explanations and examples please see the extensive vignettes supplied with this package.}
  \item{\code{new(...)}}{Create a new pivot data group, specifying the field values documented above.}

  \item{\code{getAncestorGroups(ancestors, includeCurrentGroup=FALSE)}}{Get all of the data groups above the current data group in the parent-child data group hierarchy.}
  \item{\code{getDescendantGroups(descendants, includeCurrentGroup=FALSE)}}{Get all of the data groups below the current data group in the parent-child data group hierarchy.}
  \item{\code{getLeafGroups(leafGroups)}}{Get all of the data groups across the bottom level of the data group hierarchy.}
  \item{\code{getLevelGroups(level, levelGroups)}}{Get all of the data groups at a specific level in the data group hierarchy.}
  \item{\code{addChildGroup(variableName, values, caption, isTotal=FALSE, calculationGroupName, calculationName)}}{Add a new data group as the child of the current data group.}
  \item{\code{addDataGroups(variableName, atLevel, fromData=TRUE,  dataName, dataSortOrder="asc", dataFormat, onlyCombinationsThatExist=TRUE, explicitListOfValues, calculationGroupName, expandExistingTotals=FALSE, addTotal=TRUE, visualTotals=FALSE, totalPosition="after", totalCaption="Total")}}{Generate new data groups based on the distinct values in a data frame or using explicitly specified data values.}
  \item{\code{sortDataGroups(levelNumber=1, orderBy="calculation", sortOrder="desc", calculationGroupName="default", calculationName)}}{Sort data groups either by the data group data value, caption or based on calculation result values.}
  \item{\code{addCalculationGroups(calculationGroupName, atLevel)}}{Add a calculation group to the data group hierarchy.}
  \item{\code{getLevelCount(includeCurrentLevel=FALSE)}}{Count the number of levels in the data group hierarchy.}
  \item{\code{normaliseDataGroup()}}{Normalise the data group hierachy so that all branches have the same number of levels - accomplished by adding empty child data groups where needed.}
  \item{\code{asList()}}{Get a list representation of the data group(s).}
  \item{\code{asJSON()}}{Get a JSON representation of the data group(s).}
}
}

\examples{
# This class should only be created by the pivot table.
# It is not intended to be created outside of the pivot table.
}
\keyword{data}
\keyword{group}
