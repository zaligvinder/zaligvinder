(declare-const X String)
; @"^\d[a-zA-Z]\w{1}\d{2}[a-zA-Z]\w{1}\d{3}$"
(assert (str.in.re X (re.++ (str.to.re "@\x22") (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 1 1) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 1 1) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x22\x0a"))))
(check-sat)
