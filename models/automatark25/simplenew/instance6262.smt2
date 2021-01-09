(declare-const X String)
; www\x2Emirarsearch\x2Ecom
(assert (not (str.in.re X (str.to.re "www.mirarsearch.com\x0a"))))
(check-sat)
