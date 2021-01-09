(declare-const X String)
; /\*[\d\D]*?\*/
(assert (not (str.in.re X (re.++ (str.to.re "/*") (re.* (re.union (re.range "0" "9") (re.comp (re.range "0" "9")))) (str.to.re "*/\x0a")))))
(check-sat)
