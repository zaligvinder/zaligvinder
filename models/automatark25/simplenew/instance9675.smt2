(declare-const X String)
; (^(49030)[2-9](\d{10}$|\d{12,13}$))
(assert (str.in.re X (re.++ (str.to.re "\x0a49030") (re.range "2" "9") (re.union ((_ re.loop 10 10) (re.range "0" "9")) ((_ re.loop 12 13) (re.range "0" "9"))))))
(check-sat)
