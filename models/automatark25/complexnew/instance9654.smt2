(declare-const X String)
; /\x2epui([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.pui") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^(([a-zA-Z]{3})?([0-9]{4}))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.opt ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 4 4) (re.range "0" "9"))))))
; ^[^ ,0]*$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re ",") (str.to.re "0"))) (str.to.re "\x0a")))))
; ^-?\d*(\.\d+)?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
