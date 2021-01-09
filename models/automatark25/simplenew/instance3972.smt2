(declare-const X String)
; ^(0)$|^([1-9][0-9]*)$
(assert (str.in.re X (re.union (str.to.re "0") (re.++ (str.to.re "\x0a") (re.range "1" "9") (re.* (re.range "0" "9"))))))
(check-sat)
