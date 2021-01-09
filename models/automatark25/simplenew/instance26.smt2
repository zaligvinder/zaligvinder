(declare-const X String)
; ^(~?/|[a-zA-Z]:[\\/]).+
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "~")) (str.to.re "/")) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":") (re.union (str.to.re "\x5c") (str.to.re "/")))) (re.+ re.allchar) (str.to.re "\x0a")))))
(check-sat)
