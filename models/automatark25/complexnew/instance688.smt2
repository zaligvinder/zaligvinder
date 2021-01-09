(declare-const X String)
; bind\w+Owner\x3A\dBetaWordixqshv\x2fqzccs
(assert (str.in.re X (re.++ (str.to.re "bind") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:") (re.range "0" "9") (str.to.re "BetaWordixqshv/qzccs\x0a"))))
; (\+91(-)?|91(-)?|0(-)?)?(9)[0-9]{9}
(assert (str.in.re X (re.++ (re.opt (re.union (re.++ (str.to.re "+91") (re.opt (str.to.re "-"))) (re.++ (str.to.re "91") (re.opt (str.to.re "-"))) (re.++ (str.to.re "0") (re.opt (str.to.re "-"))))) (str.to.re "9") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
