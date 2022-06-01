(declare-const X String)
; ^(\d)?(\d|,)*\.?\d{1,2}$
(assert (str.in_re X (re.++ (re.opt (re.range "0" "9")) (re.* (re.union (re.range "0" "9") (str.to_re ","))) (re.opt (str.to_re ".")) ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
