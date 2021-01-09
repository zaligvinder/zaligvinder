(declare-const X String)
; \.?[a-zA-Z0-9]{1,}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re ".")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
