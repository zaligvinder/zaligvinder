(declare-const X String)
; ^([0-9][,]?)*([0-9][0-9])$
(assert (str.in_re X (re.++ (re.* (re.++ (re.range "0" "9") (re.opt (str.to_re ",")))) (str.to_re "\u{a}") (re.range "0" "9") (re.range "0" "9"))))
(check-sat)
