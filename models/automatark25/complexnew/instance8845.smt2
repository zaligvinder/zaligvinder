(declare-const X String)
; ^[+]?\d*$
(assert (str.in.re X (re.++ (re.opt (str.to.re "+")) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; \D
(assert (str.in.re X (re.++ (re.comp (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
