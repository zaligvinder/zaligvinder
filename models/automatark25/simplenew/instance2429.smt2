(declare-const X String)
; ^[a-zA-Z]{3}[uU]{1}[0-9]{7}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 1) (re.union (str.to.re "u") (str.to.re "U"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
