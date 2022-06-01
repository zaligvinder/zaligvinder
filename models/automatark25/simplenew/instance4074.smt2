(declare-const X String)
; ^1?[1-2]$|^[1-9]$|^[1]0$
(assert (str.in_re X (re.union (re.++ (re.opt (str.to_re "1")) (re.range "1" "2")) (re.range "1" "9") (str.to_re "10\u{a}"))))
(check-sat)
