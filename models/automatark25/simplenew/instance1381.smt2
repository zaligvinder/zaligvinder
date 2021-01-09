(declare-const X String)
; ^(((ht|f)tp(s?))\://).*$
(assert (not (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a://") (re.union (str.to.re "ht") (str.to.re "f")) (str.to.re "tp") (re.opt (str.to.re "s"))))))
(check-sat)
