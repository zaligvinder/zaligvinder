(declare-const X String)
; ^\d{1,7}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 7) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
