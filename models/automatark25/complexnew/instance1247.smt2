(declare-const X String)
; User-Agent\x3A[^\n\r]*HTTP_RAT_
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "HTTP_RAT_\x0a"))))
; Subject\x3Alinkautomatici\x2EcomReferer\x3Awww\x2Esearchreslt\x2Ecom
(assert (str.in.re X (str.to.re "Subject:linkautomatici.comReferer:www.searchreslt.com\x0a")))
; deskwizz\x2EcomReportsadblock\x2Elinkz\x2EcomUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "deskwizz.comReportsadblock.linkz.comUser-Agent:\x0a"))))
; /*d(9,15)
(assert (not (str.in.re X (re.++ (re.* (str.to.re "/")) (str.to.re "d9,15\x0a")))))
(check-sat)
