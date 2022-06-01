(declare-const X String)
; ^[+-]?\d+(\,\d{3})*\.?\d*\%?$
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.+ (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (re.opt (str.to_re "%")) (str.to_re "\u{a}"))))
(check-sat)
