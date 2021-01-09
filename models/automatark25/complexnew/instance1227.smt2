(declare-const X String)
; /\/stat_svc\/$/U
(assert (str.in.re X (str.to.re "//stat_svc//U\x0a")))
; ^[-+]?\d+(\.\d{2})?$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
