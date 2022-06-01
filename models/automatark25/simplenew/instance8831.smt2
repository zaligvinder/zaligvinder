(declare-const X String)
; Searchdata2\.activshopper\.comdll\u{3F}productsCUSTOMSAccwww\u{2E}locators\u{2E}com
(assert (str.in_re X (str.to_re "Searchdata2.activshopper.comdll?productsCUSTOMSAccwww.locators.com\u{a}")))
(check-sat)
