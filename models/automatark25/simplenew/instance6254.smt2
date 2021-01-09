(declare-const X String)
; for\sinternalcyber@yahoo\x2EcomHeadersRedirectionHost\x3A
(assert (str.in.re X (re.++ (str.to.re "for") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "internalcyber@yahoo.comHeadersRedirectionHost:\x0a"))))
(check-sat)
