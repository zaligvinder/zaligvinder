(declare-const X String)
; Subject\x3Aas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (str.in.re X (str.to.re "Subject:as.starware.com/dp/search?x=\x0a")))
(check-sat)
