(declare-const X String)
; \d{0,7}([\.|\,]\d{0,2})?
(assert (str.in_re X (re.++ ((_ re.loop 0 7) (re.range "0" "9")) (re.opt (re.++ (re.union (str.to_re ".") (str.to_re "|") (str.to_re ",")) ((_ re.loop 0 2) (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)
