(declare-const X String)
; ^[A-Z]+[A-Z0-9,\x5F]*$
(assert (str.in.re X (re.++ (re.+ (re.range "A" "Z")) (re.* (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re ",") (str.to.re "_"))) (str.to.re "\x0a"))))
(check-sat)
