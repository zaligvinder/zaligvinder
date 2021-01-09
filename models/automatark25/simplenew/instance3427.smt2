(declare-const X String)
; thereHost\x3Aselect\x2FGetwww\x2e2-seek\x2ecom\x2fsearch
(assert (str.in.re X (str.to.re "thereHost:select/Getwww.2-seek.com/search\x0a")))
(check-sat)
