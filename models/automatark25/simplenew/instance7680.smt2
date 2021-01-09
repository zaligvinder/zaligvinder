(declare-const X String)
; ad\x2Esearchsquire\x2Ecom\s+ocllceclbhs\x2fgth
(assert (not (str.in.re X (re.++ (str.to.re "ad.searchsquire.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ocllceclbhs/gth\x0a")))))
(check-sat)
