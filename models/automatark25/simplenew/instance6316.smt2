(declare-const X String)
; ^(~?/|[a-zA-Z]:[\\/]).+
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "~")) (str.to_re "/")) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ":") (re.union (str.to_re "\u{5c}") (str.to_re "/")))) (re.+ re.allchar) (str.to_re "\u{a}")))))
(check-sat)
