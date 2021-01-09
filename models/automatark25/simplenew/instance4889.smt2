(declare-const X String)
; \d{0,7}([\.|\,]\d{0,2})?
(assert (str.in.re X (re.++ ((_ re.loop 0 7) (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re ".") (str.to.re "|") (str.to.re ",")) ((_ re.loop 0 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
