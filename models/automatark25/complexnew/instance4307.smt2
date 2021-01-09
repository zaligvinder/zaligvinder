(declare-const X String)
; www\x2Ericercadoppia\x2Ecom[^\n\r]*xml\s+User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www.ricercadoppia.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "xml") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a")))))
; User-Agent\x3Aregister\.aspUser-Agent\x3AHost\x3AcdpView
(assert (str.in.re X (str.to.re "User-Agent:register.aspUser-Agent:Host:cdpView\x0a")))
; e2give\.comrichfind\x2Ecom\x22007User-Agent\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (str.to.re "e2give.comrichfind.com\x22007User-Agent:www.searchreslt.com\x0a"))))
(check-sat)
