% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simhash.R
\name{simhash}
\alias{simhash}
\alias{vector_simhash}
\title{Simhash computation}
\usage{
simhash(code, jiebar)

vector_simhash(code, jiebar)
}
\arguments{
\item{code}{For \code{simhash}, a Chinese sentence or the path of a text file.
For \code{vector_simhash}, a character vector of segmented words.}

\item{jiebar}{jiebaR Worker.}
}
\description{
Simhash worker uses the keyword extraction worker to find the keywords
and uses simhash algorithm to compute simhash.  \code{dict} 
\code{hmm}, \code{idf} and \code{stop_word} should be provided when initializing 
jiebaR worker.
}
\details{
There is a symbol \code{<=} for this function.
}
\examples{
\dontrun{
### Simhash
words = "hello world"
simhasher = worker("simhash",topn=1)
simhasher <= words
distance("hello world" , "hello world!" , simhasher)
}
}
\references{
MS Charikar - Similarity Estimation Techniques from Rounding Algorithms
}
\seealso{
\code{\link{<=.simhash}} \code{\link{worker}}
}
\author{
Qin Wenfeng
}
