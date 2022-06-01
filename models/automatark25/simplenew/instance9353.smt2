(declare-const X String)
; ^(0)$|^([1-9][0-9]*)$
(assert (str.in_re X (re.union (str.to_re "0") (re.++ (str.to_re "\u{a}") (re.range "1" "9") (re.* (re.range "0" "9"))))))
(check-sat)
