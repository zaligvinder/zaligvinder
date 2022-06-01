(declare-const X String)
; ^(([0-2])?([0-9]))$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt (re.range "0" "2")) (re.range "0" "9"))))
(check-sat)
