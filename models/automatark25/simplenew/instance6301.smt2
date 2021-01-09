(declare-const X String)
; e2give\.comrichfind\x2Ecom\x22007User-Agent\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (str.to.re "e2give.comrichfind.com\x22007User-Agent:www.searchreslt.com\x0a"))))
(check-sat)
