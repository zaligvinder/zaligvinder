(declare-const X String)
; \d{6}
(assert (not (str.in.re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
