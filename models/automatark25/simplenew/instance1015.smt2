(declare-const X String)
; ^(AT){0,1}[U]{0,1}[0-9]{8}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "AT")) (re.opt (str.to.re "U")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
