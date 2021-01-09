(declare-const X String)
; cs\x2Eshopperreports\x2EcomActivityHost\x3AYeah\!User-Agent\x3AMicrosoft
(assert (str.in.re X (str.to.re "cs.shopperreports.comActivityHost:Yeah!User-Agent:Microsoft\x0a")))
; for[^\n\r]*Host\x3A\sinternalcyber@yahoo\x2EcomHeadersRedirection
(assert (not (str.in.re X (re.++ (str.to.re "for") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "internalcyber@yahoo.comHeadersRedirection\x0a")))))
(check-sat)
