(declare-const X String)
; ^(97(8|9))?\d{9}(\d|X)$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "97") (re.union (str.to.re "8") (str.to.re "9")))) ((_ re.loop 9 9) (re.range "0" "9")) (re.union (re.range "0" "9") (str.to.re "X")) (str.to.re "\x0a")))))
; ^[a-zA-Z]{1,3}\[([0-9]{1,3})\]
(assert (not (str.in.re X (re.++ ((_ re.loop 1 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "[") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "]\x0a")))))
(check-sat)
