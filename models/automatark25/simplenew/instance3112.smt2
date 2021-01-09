(declare-const X String)
; [1-8][0-9]{2}[0-9]{5}
(assert (not (str.in.re X (re.++ (re.range "1" "8") ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
