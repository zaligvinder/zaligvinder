(declare-const X String)
; cash loans, long term loans, unsecured loans, 12 month loans, bad credit loans,
(assert (str.in.re X (str.to.re "cash loans, long term loans, unsecured loans, 12 month loans, bad credit loans,\x0a")))
(check-sat)
