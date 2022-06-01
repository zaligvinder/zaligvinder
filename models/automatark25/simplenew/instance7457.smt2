(declare-const X String)
; ^[a-z]+[0-9]*[a-z]+$
(assert (not (str.in_re X (re.++ (re.+ (re.range "a" "z")) (re.* (re.range "0" "9")) (re.+ (re.range "a" "z")) (str.to_re "\u{a}")))))
(check-sat)
