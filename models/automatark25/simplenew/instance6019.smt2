(declare-const X String)
; /^number=[0-9A-F]{32}$/mC
(assert (str.in.re X (re.++ (str.to.re "/number=") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "/mC\x0a"))))
(check-sat)
