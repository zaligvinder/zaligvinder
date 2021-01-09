(declare-const X String)
; ('{2})*([^'\r\n]*)('{2})*([^'\r\n]*)('{2})*
(assert (str.in.re X (re.++ (re.* ((_ re.loop 2 2) (str.to.re "'"))) (re.* (re.union (str.to.re "'") (str.to.re "\x0d") (str.to.re "\x0a"))) (re.* ((_ re.loop 2 2) (str.to.re "'"))) (re.* (re.union (str.to.re "'") (str.to.re "\x0d") (str.to.re "\x0a"))) (re.* ((_ re.loop 2 2) (str.to.re "'"))) (str.to.re "\x0a"))))
; now\d+\x2Fbar_pl\x2Fshdoclc\.fcgiareHost\x3Ae2give\.com
(assert (str.in.re X (re.++ (str.to.re "now") (re.+ (re.range "0" "9")) (str.to.re "/bar_pl/shdoclc.fcgiareHost:e2give.com\x0a"))))
; ^\d+(\,\d{1,2})?$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ",") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
