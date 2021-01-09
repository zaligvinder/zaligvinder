(declare-const X String)
; Windows\d+BlackFiltereddaosearch\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Windows") (re.+ (re.range "0" "9")) (str.to.re "BlackFiltereddaosearch.com\x0a")))))
(check-sat)
