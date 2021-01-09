(declare-const X String)
; ^1?[1-9]$|^[1-2]0$
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "1")) (re.range "1" "9")) (re.++ (re.range "1" "2") (str.to.re "0\x0a"))))))
(check-sat)
