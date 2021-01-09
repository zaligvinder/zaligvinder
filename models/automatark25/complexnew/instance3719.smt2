(declare-const X String)
; ^(((ht|f)tp(s?))\://).*$
(assert (not (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a://") (re.union (str.to.re "ht") (str.to.re "f")) (str.to.re "tp") (re.opt (str.to.re "s"))))))
; ^[a-zA-Z]$
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re "\x0a")))))
(check-sat)
