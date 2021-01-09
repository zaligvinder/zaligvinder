(declare-const X String)
; Subject\x3Alinkautomatici\x2EcomReferer\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (str.to.re "Subject:linkautomatici.comReferer:www.searchreslt.com\x0a"))))
(check-sat)
