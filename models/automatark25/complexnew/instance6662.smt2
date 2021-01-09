(declare-const X String)
; ^[a-zA-Z]{1,3}\[([0-9]{1,3})\]
(assert (str.in.re X (re.++ ((_ re.loop 1 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "[") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "]\x0a"))))
; ^\$?\d+(\.(\d{2}))?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
