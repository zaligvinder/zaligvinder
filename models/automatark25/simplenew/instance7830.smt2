(declare-const X String)
; ^(GB)?([0-9]{9})$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "GB")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
