\name{NEWS}
\title{News for Package \pkg{RInside}}
\newcommand{\ghpr}{\href{https://github.com/eddelbuettel/rinside/pull/#1}{##1}}
\newcommand{\ghit}{\href{https://github.com/eddelbuettel/rinside/issues/#1}{##1}}

\section{Changes in RInside version 0.2.19 (2025-04-22)}{
  \itemize{
    \item The qt example now supports Qt6 (Joris Goosen in \ghpr{54} closing
    \ghit{53})
    \item CMake support was refined for more recent versions (Joris Goosen in
    \ghpr{55})
    \item The sandboxed-server example now states more clearly that
    \code{RINSIDE_CALLBACKS} needs to be defined
    \item More routine update to package and continuous integration.
    \item Some now-obsolete checks for C++11 have been removed
    \item When parsing environment variables, use of double quotes is now
    supported`p
  }
}

\section{Changes in RInside version 0.2.18 (2023-02-01)}{
  \itemize{
    \item The random number initialization was updated as in R.
    \item The main REPL is not running via `run_Rmainloop()`.
    \item Small routine update to package and continuous integration.
  }
}

\section{Changes in RInside version 0.2.17 (2022-03-31)}{
  \itemize{
    \item A Windows-only patch for R 4.2.0 kindly provided by Tomas
    Kalibera was applied, and also conditioned on R (>= 4.2.0)
    \item Continuous Integration setup was updated and now uses
    \href{https://eddelbuettel.github.io/r-ci/}{r-ci}.
    \item Several updates were made to README.md (badges etc) and
    DESCRIPTION
  }
}

\section{Changes in RInside version 0.2.16 (2020-03-12)}{
  \itemize{
    \item RInside is now embeddable (with a reduced interface) from C
    applications thanks to Lance Bachmeier (who is now co-author) plus
    some polish by Dirk in \ghpr{43})
    \item Added \code{R_SESSION_INIIALIZED} to list of excluded variables.
    \item Added simple diagnostics function to have a registered function.
  }
}

\section{Changes in RInside version 0.2.15 (2019-03-06)}{
  \itemize{
    \item Improved Windows build support by copying
    \code{getenv("R_HOME")} result and improving backslash handling in
    environemt variable setting (Jonathon Love in \ghpr{27} and
    \ghpr{28})
    \item Improved Windows build support by quote-protecting
    \code{Rscript} path in \code{Makevars.win} (François-David Collin in
    \ghpr{33})
    \item A URL was corrected in README.md (Zé Vinícius in \ghpr{34}).
    \item Temporary \code{SEXP} objects are handled more carefully at
    initialization to satisfy `rchk` (Dirk in \ghpr{36})
  }
}

\section{Changes in RInside version 0.2.14 (2017-04-28)}{
  \itemize{
    \item Interactive mode can use readline REPL (Łukasz Łaniewski-Wołłk
    in \ghpr{25}, and Dirk in \ghpr{26})
    \item Windows macros checks now uses \code{_WIN32} (Kevin Ushey in
    \ghpr{22})
    \item The wt example now links with \code{libboost_system}
    \item The \code{Makevars} file is now more robist (Mattias Ellert in
    \ghpr{21})
    \item A problem with empty environment variable definitions on
    Windows was addressed (Jeroen Ooms in \ghpr{17} addressing \ghit{16})
    \item \code{HAVE_UINTPTR_T} is defined only if not already defined
    \item Travis CI is now driven via \code{run.sh} from our forked r-travis
  }
}

\section{Changes in RInside version 0.2.13 (2015-05-20)}{
  \itemize{
    \item Added workaround for a bug in R 3.2.0: by including the file
    \code{RInterface.h} only once we do not getting linker errors due to
    multiple definitions of \code{R_running_as_main_program} (which is now
    addressed in R-patched as well).
    \item Small improvements to the Travis CI script.
  }
}

\section{Changes in RInside version 0.2.12 (2015-01-27)}{
  \itemize{
    \item Several new examples have been added (with most of the work
    done by Christian Authmann):
    \itemize{
      \item \code{standard/rinside_sample15.cpp} shows how to create a
      lattice plot (following a StackOverflow question)
      \item \code{standard/rinside_sample16.cpp} shows object wrapping,
      and exposing of C++ functions
      \item \code{standard/rinside_sample17.cpp} does the same via C++11
      \item \code{sandboxed_servers/} adds an entire framework of
      client/server communication outside the main process (but using a
      subset of supported types)
    }
    \item \code{standard/rinside_module_sample9.cpp} was repaired
    following a fix to \code{InternalFunction} in \CRANpkg{Rcpp}
    \item For the seven example directories which contain a
    \code{Makefile}, the \code{Makefile} was renamed \code{GNUmakefile}
    to please \code{R CMD check} as well as the CRAN Maintainers.
  }
}

\section{Changes in RInside version 0.2.11 (2014-02-11)}{
  \itemize{
    \item Updated for \CRANpkg{Rcpp} 0.11.0:
    \itemize{
      \item Updated initialization by assigning global environment via
      pointer only after R itself has been initialized -- with special
      thanks to Kevin Ushey for the fix
      \item Updated \code{DESCRIPTION} with \code{Imports:} instead of
      \code{Depends:}
      \item Added correspondiing \code{importFrom(Rcpp, evalCpp)} to
      \code{NAMESPACE}
      \item Noted in all \code{inst/examples/*/Makefile} that
      \CRANpkg{Rcpp} no longer requires a library argument, but left code for
      backwards compatibility in case 0.11.0 is not yet installed.
    }
    \item Added \code{--vanilla --slave} to default arguments for R
    initialization
    \item Added a few more explicit \code{#include} statements in the \code{qt}
    example which Qt 5.1 now appears to require -- with thanks to
    Spencer Behling for the patch
    \item Added new MPI example with worker functions and RInside
    instance, kindly contributed by Nicholas Pezolano and Martin Morgan
  }
}

\section{Changes in RInside version 0.2.10 (2012-12-05)}{
  \itemize{
    \item Adjusted to change in R which requires turning checking of the
    stack limit off in order to allow for access from multiple threads
    as in the Wt examples. As there are have been no side-effects, this
    is enabled by default on all platforms (with the exception of Windows).
    \item Added new \sQuote{threads} example directory with a simple
    example based on a Boost mutex example.
    \item Disabled two examples (passing an external function down)
    which do not currently work; external pointer use should still work.
  }
}

\section{Changes in RInside version 0.2.9 (2012-11-04)}{
  \itemize{
    \item Applied (modified) patch by Theodore Lytras which lets RInside
    recover from some parsing errors and makes RInside applications more
    tolerant of errors
    \item Added non-throwing variants of parseEval() and parseEvalQ()
    \item Modified Qt and Wt examples of density estimation applications
    to be much more resilient to bad user input
    \item On Windows, have RInside use R's get_R_HOME() function to get
    R_HOME value from registry if not set by user
    \item Added note to examples/standard/Makefile.win that R_HOME may
    need to be set to run the executables -- so either export your local
    value, or re-install RInside from source to have it reflected in the
    library build of libRinside
    \item Updated CMake build support for standard, armadillo and eigen
    \item Improved CMake builds of examples/standard, examples/eigen and
    examples/armadillo by detecting architecture
  }
}
\section{Changes in RInside version 0.2.8 (2012-09-07)}{
  \itemize{
    \item Added CMake build support for armadillo and eigen examples,
    once again kindly contributed by Peter Aberline
    \item Corrected Windows package build to always generate a 64 bit
    static library too
    \item Updated package build to no longer require configure / configure.win to
    update the two header file supplying compile-time information;
    tightened build dependencies on headers in Makevars / Makevars.win
    \item Improved examples/standard/Makefile.win by detecting architecture
  }
}
\section{Changes in RInside version 0.2.7 (2012-08-12)}{
  \itemize{
    \item New fifth examples subdirectory 'armadillo' with two new
    examples showing how to combine \CRANpkg{RInside} with \CRANpkg{RcppArmadillo}
    \item New sixth examples subdirectory 'eigen' with two new examples
    showing how to combine \CRANpkg{RInside} with \CRANpkg{RcppEigen}
    \item Prettified the Wt example 'web application' with CSS use, also added
    and XML file with simple headers and description text
    \item New example rinside_sample12 motivated by StackOverflow
    question on using \code{sample()} from C
    \item Added CMake build support on Windows for the examples
  }
}
\section{Changes in RInside version 0.2.6 (2012-01-11)}{
  \itemize{
    \item Correct Windows initialization by not using Rprintf in internal
    console writer, with thanks to both James Bates and John Brzustowski
    \item Update RNG seeding (used by tmpnam et al) to same scheme used by
    R since 2.14.0: blending both millisecond time and process id
    \item Added CMake build support for all four example directories as kindly
    provided by Peter Aberline; this helps when writing RInside code
    inside of IDEs such as Eclipse, KDevelop or Code::Blocks
    \item Small update to standard examples Makefile for Windows permitting
    to explicitly set i386 or x64 as a build architecture
  }
}
\section{Changes in RInside version 0.2.5 (2011-12-07)}{
  \itemize{
    \item Applied (somewhat simplified) patch by James Bates which restores
    RInside to working on Windows -- with a big Thank You! to James for
    fixing a long-standing bug we inadvertendly introduced right after
    0.2.0 almost two years ago
    \item New example embedding R inside a Wt (aka Webtoolkit, pronounced
    'witty') application, mirroring the previous Qt application
    \item Qt example qtdensity now uses the new svg() device in base R; removed
    test for cairoDevice package as well as fallback png code
    \item Very minor fix to qmake.pro file for Qt app correcting link order
  }
}
\section{Changes in RInside version 0.2.4 (2011-04-24)}{
  \itemize{
    \item Minor code cleanups in initialization code
    \item New example embedding R inside a Qt application, along with pro file
    for Qt's qmake providing a complete simple C++ GUI application
    \item New examples rinside_sample\{10,11\} based on questions on the
    r-help and r-devel mailing list
    \item Some improvements and simplifications throughout examples/standard
    as well as examples/mpi/
    \item Added this NEWS files -- with entries below summarised from ChangeLog
    and the corresponding blog posts
  }
}
\section{Changes in RInside version 0.2.3 (2010-08-06)}{
  \itemize{
    \item New example rinside_sample9 on how to expose C++ to embedded R
    \item New example rinside_module_sample0 to show module access from RInside
    \item Simplified rinside_sample3 and rinside_sample4
    \item Some code cleanup to help Solaris builds
    \item Implicit use of new Proxy class with operator T(), see rinside_sample8
  }
}
\section{Changes in RInside version 0.2.2 (2010-03-22)}{
  \itemize{
    \item New operator[](string) lets RInside act as proxy to R's global
    environment so that we can R["x"] = 10 to assign; all the actual
    work is done by Rcpp::Environment
    \item No longer ship doxygen-generated docs in build
    \item Use std::string for all arguments inside throw() to help Windows build
    \item Default to static linking on OS X and Windows just like Rcpp does
    \item parseEval() now returns SEXP and has just a string argument for more
    functional use; it and void sibbling parseEvalQ() now throw exections
    \item rinside_sample\{2,4,5\} updated accordingly
    \item Two new 'R inside an MPI app' examples contributed by Jianping Hua
    \item Also added two C++ variants of the C examples for RInside and MPI
    \item rinside_sample8 updated with parseEval changes
    \item Internal MemBuf class simplified via STL std::string
    \item Autoload simplied via the new Rcpp API
    \item Added default constructor for RInside
    \item Retire assign(vector<vector<double> >) via template specialisation
    \item Include Rcpp.h; switch to Rf_ prefixed R API to avoid Redefine macros
    \item Windows version currently segfaults on startup
  }
}
\section{Changes in RInside version 0.2.1 (2010-01-06)}{
  \itemize{
    \item Startup now defaults to FALSE, no longer call Rf_KillAllDevices
    \item Some minor build and code fixes for Windows
  }
}
\section{Changes in RInside version 0.2.0 (2009-12-20)}{
  \itemize{
    \item Initial Windows support, with thanks to Richard Holbrey for both the
    initial push and a setenv() implementation
    \item Added Makefile.win for build with the MinGW toolchain to src/ and examples/
    \item Some improvements to destructor per example in Writing R Extensions
    \item New rinside_sample5 based on r-devel post
  }
}
\section{Changes in RInside version 0.1.1 (2009-02-19)}{
  \itemize{
    \item The examples/ Makefile now sets $R_HOME via 'R RHOME', and also employs
    $R_ARCH for arch-dependent headers -- with thanks for Jeff, Jan and Simon
    \item Added THANKS file to give recognition to those who helped RInside along
    \item Added rinside_sample4 as another example based on an r-devel question
  }
}
\section{Changes in RInside version 0.1.0 (2009-02-19)}{
  \itemize{
    \item Initial CRAN release
    \item Improved build process
    \item Added doxygen generated documentation
    \item Added two more example
  }
}
\section{Changes in RInside version 0.0.1 (2009-07-19)}{
  \itemize{
    \item Corrected error in memory buffer class with thanks to Miguel Lechón for
    a finding the issue and sending a patch
    \item Added two regression test examples to demonstrate bug and fix
    \item Minor code cleanups
    \item Initial version in SVN at R-Forge
  }
}
