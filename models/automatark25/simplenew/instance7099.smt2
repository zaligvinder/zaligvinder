(declare-const X String)
; ^#?(([a-fA-F0-9]{3}){1,2})$
(assert (str.in_re X (re.++ (re.opt (str.to_re "#")) ((_ re.loop 1 2) ((_ re.loop 3 3) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)
