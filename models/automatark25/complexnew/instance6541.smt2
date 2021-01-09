(declare-const X String)
; /filename=[^\n]*\x2emim/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mim/i\x0a"))))
; LogsHXLogOnlytoolbar\x2Ei-lookup\x2Ecom
(assert (not (str.in.re X (str.to.re "LogsHXLogOnlytoolbar.i-lookup.com\x0a"))))
(check-sat)
