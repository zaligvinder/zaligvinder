(declare-const X String)
; LogsHXLogOnlytoolbar\x2Ei-lookup\x2Ecom
(assert (str.in.re X (str.to.re "LogsHXLogOnlytoolbar.i-lookup.com\x0a")))
(check-sat)
