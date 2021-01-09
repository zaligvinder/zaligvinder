(declare-const X String)
; bind\w+Owner\x3A\dBetaWordixqshv\x2fqzccs
(assert (not (str.in.re X (re.++ (str.to.re "bind") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:") (re.range "0" "9") (str.to.re "BetaWordixqshv/qzccs\x0a")))))
(check-sat)
