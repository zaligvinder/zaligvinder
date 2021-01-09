(declare-const X String)
; ^[1-9]0?$
(assert (not (str.in.re X (re.++ (re.range "1" "9") (re.opt (str.to.re "0")) (str.to.re "\x0a")))))
(check-sat)
