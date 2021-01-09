(declare-const X String)
; Searchdata2\.activshopper\.comdll\x3FproductsCUSTOMSAccwww\x2Elocators\x2Ecom
(assert (not (str.in.re X (str.to.re "Searchdata2.activshopper.comdll?productsCUSTOMSAccwww.locators.com\x0a"))))
; ^([4]{1})([0-9]{12,15})$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "4")) ((_ re.loop 12 15) (re.range "0" "9")) (str.to.re "\x0a"))))
; /^GET\s\x2f[A-F0-9]{152}/m
(assert (str.in.re X (re.++ (str.to.re "/GET") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/") ((_ re.loop 152 152) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "/m\x0a"))))
(check-sat)
