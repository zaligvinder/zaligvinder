(declare-const X String)
; (^\([0]\d{2}\))(\d{6,7}$)
(assert (not (str.in.re X (re.++ ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "\x0a(0") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ")")))))
; ^(\d{3}-\d{3}-\d{4})*$
(assert (not (str.in.re X (re.++ (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
