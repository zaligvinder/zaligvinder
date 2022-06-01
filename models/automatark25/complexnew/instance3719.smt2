(declare-const X String)
; ^(((ht|f)tp(s?))\://).*$
(assert (not (str.in_re X (re.++ (re.* re.allchar) (str.to_re "\u{a}://") (re.union (str.to_re "ht") (str.to_re "f")) (str.to_re "tp") (re.opt (str.to_re "s"))))))
; ^[a-zA-Z]$
(assert (not (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re "\u{a}")))))
(check-sat)
