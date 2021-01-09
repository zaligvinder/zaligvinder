(declare-const X String)
; ^[A-Z]{2,4}[0-9][A-Z0-9]+$
(assert (str.in.re X (re.++ ((_ re.loop 2 4) (re.range "A" "Z")) (re.range "0" "9") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
; [0][^0]|([^0]{1}(.){1})|[^0]*
(assert (not (str.in.re X (re.union (re.++ (str.to.re "0") (re.comp (str.to.re "0"))) (re.++ ((_ re.loop 1 1) (re.comp (str.to.re "0"))) ((_ re.loop 1 1) re.allchar)) (re.++ (re.* (re.comp (str.to.re "0"))) (str.to.re "\x0a"))))))
(check-sat)
