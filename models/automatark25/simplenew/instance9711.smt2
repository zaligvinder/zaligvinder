(declare-const X String)
; [cC]{1}[0-9]{0,7}
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "c") (str.to.re "C"))) ((_ re.loop 0 7) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
