(declare-const X String)
; (^(((\d)|(\d\d)|(\d\d\d))(\u{A0}|\u{20}))*((\d)|(\d\d)|(\d\d\d))([,.]\d*)?$)
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.* (re.++ (re.union (re.range "0" "9") (re.++ (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9") (re.range "0" "9"))) (re.union (str.to_re "\u{a0}") (str.to_re " ")))) (re.union (re.range "0" "9") (re.++ (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9") (re.range "0" "9"))) (re.opt (re.++ (re.union (str.to_re ",") (str.to_re ".")) (re.* (re.range "0" "9")))))))
(check-sat)
