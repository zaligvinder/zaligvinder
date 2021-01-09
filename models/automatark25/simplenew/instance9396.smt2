(declare-const X String)
; \x2Fdesktop\x2FSystemwwwfromToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (str.to.re "/desktop/SystemwwwfromToolbartheServer:www.searchreslt.com\x0a"))))
(check-sat)
