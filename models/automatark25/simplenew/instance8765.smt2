(declare-const X String)
; ^[AaWaKkNn][a-zA-Z]?[0-9][a-zA-Z]{1,3}$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "A") (str.to.re "a") (str.to.re "W") (str.to.re "K") (str.to.re "k") (str.to.re "N") (str.to.re "n")) (re.opt (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.range "0" "9") ((_ re.loop 1 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
(check-sat)
