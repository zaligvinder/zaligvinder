(declare-const X String)
; ^[A-Z]+[A-Z0-9,\u{5F}]*$
(assert (not (str.in_re X (re.++ (re.+ (re.range "A" "Z")) (re.* (re.union (re.range "A" "Z") (re.range "0" "9") (str.to_re ",") (str.to_re "_"))) (str.to_re "\u{a}")))))
(check-sat)
