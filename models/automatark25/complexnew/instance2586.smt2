(declare-const X String)
; /([etDZhns8dz]{1,3}k){3}[etDZhns8dz]{1,3}f[etDZhns8dz]{16}A/
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.union (str.to.re "e") (str.to.re "t") (str.to.re "D") (str.to.re "Z") (str.to.re "h") (str.to.re "n") (str.to.re "s") (str.to.re "8") (str.to.re "d") (str.to.re "z"))) (str.to.re "k"))) ((_ re.loop 1 3) (re.union (str.to.re "e") (str.to.re "t") (str.to.re "D") (str.to.re "Z") (str.to.re "h") (str.to.re "n") (str.to.re "s") (str.to.re "8") (str.to.re "d") (str.to.re "z"))) (str.to.re "f") ((_ re.loop 16 16) (re.union (str.to.re "e") (str.to.re "t") (str.to.re "D") (str.to.re "Z") (str.to.re "h") (str.to.re "n") (str.to.re "s") (str.to.re "8") (str.to.re "d") (str.to.re "z"))) (str.to.re "A/\x0a"))))
; ^[^-]{1}?[^\"\']*$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.comp (str.to.re "-"))) (re.* (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "\x0a")))))
(check-sat)
