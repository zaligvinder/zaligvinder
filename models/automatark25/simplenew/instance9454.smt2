(declare-const X String)
; ^1?[1-9]$|^[1-2]0$
(assert (not (str.in_re X (re.union (re.++ (re.opt (str.to_re "1")) (re.range "1" "9")) (re.++ (re.range "1" "2") (str.to_re "0\u{a}"))))))
(check-sat)
