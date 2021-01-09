(declare-const X String)
; ^[a-z]
(assert (not (str.in.re X (re.++ (re.range "a" "z") (str.to.re "\x0a")))))
; ^1+0+$
(assert (str.in.re X (re.++ (re.+ (str.to.re "1")) (re.+ (str.to.re "0")) (str.to.re "\x0a"))))
(check-sat)
