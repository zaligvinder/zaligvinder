(declare-const X String)
; /\x2eexe([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.exe") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^[a-zA-Z]$
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re "\x0a"))))
; ^[0-9]{8}$
(assert (str.in.re X (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; cyber@yahoo\x2Ecomconfig\x2E180solutions\x2Ecom
(assert (str.in.re X (str.to.re "cyber@yahoo.comconfig.180solutions.com\x0a")))
(check-sat)
