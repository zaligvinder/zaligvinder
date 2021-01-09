(declare-const X String)
; Yeah\!Host\x3AEnTrYwww\x2EZSearchResults\x2Ecom
(assert (not (str.in.re X (str.to.re "Yeah!Host:EnTrYwww.ZSearchResults.com\x13\x0a"))))
; cash loans, long term loans, unsecured loans, 12 month loans, bad credit loans,
(assert (str.in.re X (str.to.re "cash loans, long term loans, unsecured loans, 12 month loans, bad credit loans,\x0a")))
; Server\x3AWordTheHost\x3afrom
(assert (str.in.re X (str.to.re "Server:WordTheHost:from\x0a")))
(check-sat)
