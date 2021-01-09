(declare-const X String)
; ^[+-]?\d+(\,\d{3})*\.?\d*\%?$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (re.opt (str.to.re "%")) (str.to.re "\x0a"))))
(check-sat)
