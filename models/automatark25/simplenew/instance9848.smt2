(declare-const X String)
; downloads\x2Emorpheus\x2Ecom\x2Frotation
(assert (not (str.in.re X (str.to.re "downloads.morpheus.com/rotation\x0a"))))
(check-sat)
