(declare-const X String)
; ^(V-|I-)?[0-9]{4}$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "V-") (str.to.re "I-"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
