(declare-const X String)
; ^[A-Z][a-z]+((i)?e(a)?(u)?[r(re)?|x]?)$
(assert (not (str.in_re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to_re "\u{a}") (re.opt (str.to_re "i")) (str.to_re "e") (re.opt (str.to_re "a")) (re.opt (str.to_re "u")) (re.opt (re.union (str.to_re "r") (str.to_re "(") (str.to_re "e") (str.to_re ")") (str.to_re "?") (str.to_re "|") (str.to_re "x")))))))
(check-sat)
