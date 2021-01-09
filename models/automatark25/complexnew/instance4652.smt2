(declare-const X String)
; /\x2ehpj([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.hpj") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; \d{10,12}@[a-zA-Z].[a-zA-Z].*
(assert (str.in.re X (re.++ ((_ re.loop 10 12) (re.range "0" "9")) (str.to.re "@") (re.union (re.range "a" "z") (re.range "A" "Z")) re.allchar (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* re.allchar) (str.to.re "\x0a"))))
; ChildWebGuardian\d+Subject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "ChildWebGuardian") (re.+ (re.range "0" "9")) (str.to.re "Subject:\x0a")))))
(check-sat)
