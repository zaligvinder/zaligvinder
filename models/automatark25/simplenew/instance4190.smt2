(declare-const X String)
; 62[0-9]{14,17}
(assert (not (str.in.re X (re.++ (str.to.re "62") ((_ re.loop 14 17) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
