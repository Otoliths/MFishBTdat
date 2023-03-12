\name{MFishBTdat-package}
\alias{MFishBTdat-package}
\alias{MFishBTdat}
\docType{package}
\title{Biomineral Archives Datasets of Migratory Fish for R}
\description{
   The \pkg{MFishBTdat} package contains a large collection of biomineral archives datasets of migratory fish. These datasets have important applications to biogeochemistry and ecosystem science.
}
\section{Browsing and Searching for Datasets}{
   A listing of all datasets in the package can be obtained with \code{help(package=MFishBTdat)}. Each datasets is also tagged with one or multiple concept terms. These concept terms refer to various aspects of a dataset, such as the biogeochemical tags, the biomineral archives/structures, the microchemical/isotopic elements, and the FAO major fishing areas that can be illustrated with the dataset. The \code{\link{dat_search}} function can be used to search among the existing datasets in the package based on their concept terms or based on a full-text search of their corresponding help files.

   You can also read the documentation online at \url{https://Otoliths.github.io/MFishBTdat/} (where the output from the example analyses corresponding to each dataset is provided).
}
\section{Contributing New Datasets}{
   We welcome contributions of new datasets to the package. For each dataset, there must be a citable reference, ideally in a peer-reviewed journal or publication. The general workflow for contributing a new dataset is as follows:

   \itemize{
   \item Install the \code{MFishBTdat} package in R in the usual manner (i.e., \code{install_github("Otoliths/MFishBTdat")}).
   \item If you are familiar with Git/GitHub and making pull requests, fork the \href{https://github.com/Otoliths/MFishBTdat}{package repository}. Otherwise, \href{https://github.com/Otoliths/MFishBTdat/archive/master.zip}{download} the source version of the package from GitHub and unzip the file to some directory on your computer.
   \item Place the raw data (in a non-binary format) in the \code{data-raw} directory. The file should be named \code{bt.<author>.<year>.<ext>}, where \code{<author>} is the last name of the first author of the publication from which the data come, \code{<year>} is the publication year, and \code{<ext>} is the file extension (e.g., \code{.txt}, \code{.csv}).
   \item Place a corresponding R script in the \code{data-raw} directory named \code{bt.<author>.<year>.r} that reads in the data, possibly does some data cleaning/processing, and then saves the dataset to the \code{data} directory (using \code{\link{save}}), with name \code{bt.<author>.<year>.rda}.
   \item Start R, load the \code{MFishBTdat} package (i.e., \code{library(MFishBTdat)}), and then run the \code{\link{dat_prepare}} function (either set the working directory to the location of the source package beforehand or use the \code{pkgdir} argument of the \code{\link{dat_prepare}} function to specify the source package location).
   \item For a new dataset, this should create a boilerplate template for a corresponding help file in the \code{man} directory, named \code{bt.<author>.<year>.Rd}. Edit the help file, adding the title and a short description of the dataset in general, a description of each variable in the dataset, further details on the dataset (e.g., the field of research, how the data was collected, the purpose of the dataset / what it was used for, the effect size or outcome measure used in the analysis, the types of analyses/models that can be illustrated with the dataset), a reference for the source of the dataset, one or multiple concept terms, the name and email address of the contributor of the dataset, and (optionally) example code to illustrate the analysis of the dataset.
   \item Either make a pull request (if you are familiar with this workflow) or zip up the \code{bt.<author>.<year>.r}, \code{bt.<author>.<year>.rda}, and \code{bt.<author>.<year>.Rd} files and open up a new \href{https://github.com/Otoliths/MFishBTdat/issues}{issue at GitHub}, attaching the zip file.
   \item If the above makes no sense to you, you can also email one of the package authors with a cleaned, raw data file in \code{.txt} or \code{.csv} format, along with a meta-data file (format doesn't matter) that includes the information described above.
   }
}
\section{Citing the Package}{
   If you use these data, please cite both the \pkg{MFishBTdat} package (see \code{citation("MFishBTdat")} for the reference) and the original source of the data as given under the help file of a dataset.
}
\section{Bug/Error Reports}{
   If you think you have found an error in an existing dataset or a bug in the package in general, please go to \url{https://github.com/Otoliths/MFishBTdat/issues} and open up a new issue.
}
\author{
   Liuyong Ding, \email{ly_ding@126.com} \cr
   Chengzhi Ding, \email{chzhding@ynu.edu.cn} \cr
   Juan Tao, \email{tao.juanat@gmail.com} \cr
   Bangli Tang, \email{tangbangli9@gmail.com}

}
\keyword{package}
