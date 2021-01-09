(declare-const X String)
; richfind\x2Ecomdcww\x2Edmcast\x2Ecom
(assert (str.in.re X (str.to.re "richfind.comdcww.dmcast.com\x0a")))
(check-sat)
