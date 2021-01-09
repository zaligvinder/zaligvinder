(declare-const X String)
; ^[0]*?[1-9]\d*\.?[0]*$
(assert (str.in.re X (re.++ (re.* (str.to.re "0")) (re.range "1" "9") (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (str.to.re "0")) (str.to.re "\x0a"))))
(check-sat)
