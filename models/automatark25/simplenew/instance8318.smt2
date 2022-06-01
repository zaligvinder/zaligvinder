(declare-const X String)
; ^((\\{2}\w+)\$?)((\\{1}\w+)*$)
(assert (str.in_re X (re.++ (re.* (re.++ ((_ re.loop 1 1) (str.to_re "\u{5c}")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "\u{a}") (re.opt (str.to_re "$")) ((_ re.loop 2 2) (str.to_re "\u{5c}")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))))
(check-sat)
