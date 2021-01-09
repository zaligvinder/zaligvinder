(declare-const X String)
; [()+-.0-9]*
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re "(") (str.to.re ")") (re.range "+" ".") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
