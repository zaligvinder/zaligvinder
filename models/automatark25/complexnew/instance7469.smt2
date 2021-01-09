(declare-const X String)
; Host\x3A.*www\x2e2-seek\x2ecom\x2fsearch
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "www.2-seek.com/search\x0a"))))
; Searchdata2\.activshopper\.comdll\x3FproductsCUSTOMSAccwww\x2Elocators\x2Ecom
(assert (str.in.re X (str.to.re "Searchdata2.activshopper.comdll?productsCUSTOMSAccwww.locators.com\x0a")))
(check-sat)
