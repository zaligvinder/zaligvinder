(declare-const X String)
; /\x2eeot([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.eot") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^-?(\d+(,\d{3})*(\.\d+)?|\d?(\.\d+))$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))) (re.++ (re.opt (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
