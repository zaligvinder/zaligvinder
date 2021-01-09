(declare-const X String)
; [0-9A-Za-z]
(assert (not (str.in.re X (re.++ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z")) (str.to.re "\x0a")))))
(check-sat)
