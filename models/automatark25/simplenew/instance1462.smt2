(declare-const X String)
; [()+-.0-9]*
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re "(") (str.to_re ")") (re.range "+" ".") (re.range "0" "9"))) (str.to_re "\u{a}")))))
(check-sat)
