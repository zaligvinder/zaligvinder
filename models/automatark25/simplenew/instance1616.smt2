(declare-const X String)
; ^([1-9]+)?[13579]$
(assert (not (str.in.re X (re.++ (re.opt (re.+ (re.range "1" "9"))) (re.union (str.to.re "1") (str.to.re "3") (str.to.re "5") (str.to.re "7") (str.to.re "9")) (str.to.re "\x0a")))))
(check-sat)
