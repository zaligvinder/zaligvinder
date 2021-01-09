(declare-const X String)
; ^[1-9]\d?-\d{7}$
(assert (not (str.in.re X (re.++ (re.range "1" "9") (re.opt (re.range "0" "9")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
