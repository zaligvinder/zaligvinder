(declare-const X String)
; User-Agent\x3A\dBarwww\x2Eaccoona\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.range "0" "9") (str.to.re "Barwww.accoona.com\x0a")))))
(check-sat)
