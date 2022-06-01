(declare-const X String)
; ^(.*)
(assert (not (str.in_re X (re.++ (re.* re.allchar) (str.to_re "\u{a}")))))
; ^([0-9][,]?)*([0-9][0-9])$
(assert (not (str.in_re X (re.++ (re.* (re.++ (re.range "0" "9") (re.opt (str.to_re ",")))) (str.to_re "\u{a}") (re.range "0" "9") (re.range "0" "9")))))
(check-sat)
