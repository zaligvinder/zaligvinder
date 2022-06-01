(declare-const X String)
; ^((\b[A-Z0-9](\w)*\b)|\s)*$
(assert (str.in_re X (re.++ (re.* (re.union (re.++ (re.union (re.range "A" "Z") (re.range "0" "9")) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; ^[+]\d{1,2}\(\d{2,3}\)\d{6,8}(\#\d{1,10})?$
(assert (not (str.in_re X (re.++ (str.to_re "+") ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "(") ((_ re.loop 2 3) (re.range "0" "9")) (str.to_re ")") ((_ re.loop 6 8) (re.range "0" "9")) (re.opt (re.++ (str.to_re "#") ((_ re.loop 1 10) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; ^\d{5}(-\d{3})?$
(assert (not (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (str.to_re "-") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)
