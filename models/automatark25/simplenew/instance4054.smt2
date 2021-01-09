(declare-const X String)
; ^(([+]|00)39)?((3[1-6][0-9]))(\d{7})$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "+") (str.to.re "00")) (str.to.re "39"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a3") (re.range "1" "6") (re.range "0" "9"))))
(check-sat)
