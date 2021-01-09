(declare-const X String)
; (NL-?)?[0-9]{9}B[0-9]{2}
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "NL") (re.opt (str.to.re "-")))) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "B") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; now\d+\x2Fbar_pl\x2Fshdoclc\.fcgiareHost\x3Ae2give\.com
(assert (not (str.in.re X (re.++ (str.to.re "now") (re.+ (re.range "0" "9")) (str.to.re "/bar_pl/shdoclc.fcgiareHost:e2give.com\x0a")))))
(check-sat)
