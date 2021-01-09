(declare-const X String)
; \d{1,2}d \d{1,2}h
(assert (not (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "d ") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "h\x0a")))))
(check-sat)
