(declare-const X String)
; ^[6]\d{7}$
(assert (str.in.re X (re.++ (str.to.re "6") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\x2ejpx([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.jpx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; onBetaHost\x3ayouRootReferer\x3A
(assert (not (str.in.re X (str.to.re "onBetaHost:youRootReferer:\x0a"))))
; ^(9|2{1})+([1-9]{1})+([0-9]{7})$
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "9") ((_ re.loop 1 1) (str.to.re "2")))) (re.+ ((_ re.loop 1 1) (re.range "1" "9"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
