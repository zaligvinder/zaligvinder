(declare-const X String)
; Host\x3Aas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (not (str.in.re X (str.to.re "Host:as.starware.com/dp/search?x=\x0a"))))
(check-sat)
