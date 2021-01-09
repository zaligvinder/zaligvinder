(declare-const X String)
; DA\dwww\x2Ee-finder\x2Ecc.*User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "DA") (re.range "0" "9") (str.to.re "www.e-finder.cc") (re.* re.allchar) (str.to.re "User-Agent:\x0a")))))
(check-sat)
