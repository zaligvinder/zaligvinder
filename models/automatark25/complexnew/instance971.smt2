(declare-const X String)
; ^[a-z]
(assert (not (str.in_re X (re.++ (re.range "a" "z") (str.to_re "\u{a}")))))
; ^1+0+$
(assert (str.in_re X (re.++ (re.+ (str.to_re "1")) (re.+ (str.to_re "0")) (str.to_re "\u{a}"))))
(check-sat)
