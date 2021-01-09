(declare-const X String)
; ^(97(8|9))?\d{9}(\d|X)$
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "97") (re.union (str.to.re "8") (str.to.re "9")))) ((_ re.loop 9 9) (re.range "0" "9")) (re.union (re.range "0" "9") (str.to.re "X")) (str.to.re "\x0a"))))
; onBetaHost\x3ayouRootReferer\x3A
(assert (str.in.re X (str.to.re "onBetaHost:youRootReferer:\x0a")))
; /([etDZhns8dz]{1,3}k){3}[etDZhns8dz]{1,3}f[etDZhns8dz]{16}A/
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.union (str.to.re "e") (str.to.re "t") (str.to.re "D") (str.to.re "Z") (str.to.re "h") (str.to.re "n") (str.to.re "s") (str.to.re "8") (str.to.re "d") (str.to.re "z"))) (str.to.re "k"))) ((_ re.loop 1 3) (re.union (str.to.re "e") (str.to.re "t") (str.to.re "D") (str.to.re "Z") (str.to.re "h") (str.to.re "n") (str.to.re "s") (str.to.re "8") (str.to.re "d") (str.to.re "z"))) (str.to.re "f") ((_ re.loop 16 16) (re.union (str.to.re "e") (str.to.re "t") (str.to.re "D") (str.to.re "Z") (str.to.re "h") (str.to.re "n") (str.to.re "s") (str.to.re "8") (str.to.re "d") (str.to.re "z"))) (str.to.re "A/\x0a")))))
(check-sat)
