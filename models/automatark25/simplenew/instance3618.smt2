(declare-const X String)
; ^(0|1)+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "0") (str.to.re "1"))) (str.to.re "\x0a")))))
(check-sat)
