(declare-const X String)
; ^(([0-2])?([0-9]))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.range "0" "2")) (re.range "0" "9")))))
(check-sat)
