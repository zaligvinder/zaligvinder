(declare-const X String)
; /\x2eskm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.skm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^-?\d+([^.,])?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.+ (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re ","))) (str.to.re "\x0a")))))
; ^[A-Z]$
(assert (not (str.in.re X (re.++ (re.range "A" "Z") (str.to.re "\x0a")))))
; ^(\d){8}$
(assert (str.in.re X (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
