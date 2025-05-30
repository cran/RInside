## RInside: Easy embedding of R inside C++ (and C)

[![CI](https://github.com/eddelbuettel/rinside/workflows/ci/badge.svg)](https://github.com/eddelbuettel/rinside/actions?query=workflow%3Aci)
[![License](https://img.shields.io/badge/license-GPL%20%28%3E=%202%29-brightgreen.svg?style=flat)](https://www.gnu.org/licenses/gpl-2.0.html)
[![CRAN](https://www.r-pkg.org/badges/version/RInside)](https://cran.r-project.org/package=RInside)
[![Dependencies](https://tinyverse.netlify.app/badge/RInside)](https://cran.r-project.org/package=RInside)
[![Debian package](https://img.shields.io/debian/v/r-cran-rinside/sid?color=brightgreen)](https://packages.debian.org/sid/r-cran-rinside)
[![Downloads](https://cranlogs.r-pkg.org/badges/RInside?color=brightgreen)](https://cran.r-project.org/package=RInside)
[![Last Commit](https://img.shields.io/github/last-commit/eddelbuettel/rinside)](https://github.com/eddelbuettel/rinside)

### About

The RInside package provides a few classes for seamless embedding of [R](https://www.r-project.org) inside of
C++ applications by relying on [Rcpp](https://www.rcpp.org/).

### Examples

Provided with the package itself are nine subdirectories with examples: from more than a dozen basic command-line examples (in directory
`standard`) to graphical user-interfaces (using both [Qt](https://www.qt.io/) and Wt), linear algebra with
[Armadillo](https://arma.sourceforge.net/) and [Eigen](https://eigen.tuxfamily.org/index.php?title=Main_Page), parallel computing with MPI to a
sandboxed server, and (since release 0.2.16) a simple (and more limited) interface for embedding insice C applications.

The simplest example (modulo its header) is [examples/standard/rinside_sample0.cpp](inst/examples/standard/rinside_sample0.cpp)

```c++
#include <RInside.h>                    // for the embedded R via RInside

int main(int argc, char *argv[]) {

    RInside R(argc, argv);              // create an embedded R instance

    R["txt"] = "Hello, world!\n";	    // assign a char* (string) to 'txt'

    R.parseEvalQ("cat(txt)");           // eval the init string, ignoring any returns

    exit(0);
}
```
The [Qt example directory](https://github.com/eddelbuettel/rinside/tree/master/inst/examples/qt) produces
this application for showing how to use R (to estimate densities) inside a C++ executable (providing the GUI):

![](https://github.com/eddelbuettel/rinside/blob/master/local/qtdensitySVG.png)

The code is portable across operating systems.  Similar, the
[Wt example directory](https://github.com/eddelbuettel/rinside/tree/master/inst/examples/wt)
contains this C++-based web application doing the same:

![](https://github.com/eddelbuettel/rinside/blob/master/local/wtdensity.png)


### See Also

The [RInside](https://dirk.eddelbuettel.com/code/rinside.html) web page has
some more details.

### Authors

Dirk Eddelbuettel, Romain Francois, and Lance Bachmeier

### License

GPL (>= 2)
