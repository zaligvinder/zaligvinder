(declare-const X String)
; (\\.|[^"])*
(assert (not (str.in.re X (re.++ (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (re.comp (str.to.re "\x22")))) (str.to.re "\x0a")))))
(check-sat)
