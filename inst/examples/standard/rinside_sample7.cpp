// -*- mode: C++; c-indent-level: 4; c-basic-offset: 4;  tab-width: 8; -*-
//
// Showing off some of the templated as<>() conversion from Rcpp
//
// Copyright (C) 2010 Dirk Eddelbuettel and Romain Francois

#include <RInside.h>                    // for the embedded R via RInside

int main(int argc, char *argv[]) {

    try {

        RInside R(argc, argv);          // create an embedded R instance 
        SEXP ans;
        std::string txt;

        txt = "m <- 1.23";
        R.parseEval(txt, ans);
        double d1 = Rcpp::as< double >(ans);
        std::cout << "d1 " << d1 << std::endl;

        txt = "M <- 1.0 * 1:6";
        R.parseEval(txt, ans);
        std::vector<double> d2 = Rcpp::as< std::vector< double > >(ans);
        std::cout << "d2[0] " << d2[0] << " d2[1] " << d2[1] << std::endl;
        
    } catch(std::exception& ex) {
        std::cerr << "Exception caught: " << ex.what() << std::endl;
    } catch(...) {
        std::cerr << "Unknown exception caught" << std::endl;
    }

    exit(0);
}

