(declare-const X String)
; ^[0-9]+\.?[0-9]?[0-9]?[0,5]?$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to.re ".")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.union (str.to.re "0") (str.to.re ",") (str.to.re "5"))) (str.to.re "\x0a"))))
(check-sat)
