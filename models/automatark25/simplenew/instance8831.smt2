(declare-const X String)
; Searchdata2\.activshopper\.comdll\x3FproductsCUSTOMSAccwww\x2Elocators\x2Ecom
(assert (str.in.re X (str.to.re "Searchdata2.activshopper.comdll?productsCUSTOMSAccwww.locators.com\x0a")))
(check-sat)
