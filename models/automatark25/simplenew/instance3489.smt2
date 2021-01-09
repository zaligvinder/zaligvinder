(declare-const X String)
; ^(BG){0,1}([0-9]{9}|[0-9]{10})$
(assert (str.in.re X (re.++ (re.opt (str.to.re "BG")) (re.union ((_ re.loop 9 9) (re.range "0" "9")) ((_ re.loop 10 10) (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
