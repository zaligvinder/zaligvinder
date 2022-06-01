(declare-const X String)
; ^(AT){0,1}[U]{0,1}[0-9]{8}$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "AT")) (re.opt (str.to_re "U")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
