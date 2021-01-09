(declare-const X String)
; ^(\d|-)?(\d|,)*\.?\d*$
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.range "0" "9") (str.to.re "-"))) (re.* (re.union (re.range "0" "9") (str.to.re ","))) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
