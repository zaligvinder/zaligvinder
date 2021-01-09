(declare-const X String)
; ^(\d{2,3}|\(\d{2,3}\))[ ]?\d{3,4}[-]?\d{3,4}$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 2 3) (re.range "0" "9")) (re.++ (str.to.re "(") ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ")"))) (re.opt (str.to.re " ")) ((_ re.loop 3 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\x2ewm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.wm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
