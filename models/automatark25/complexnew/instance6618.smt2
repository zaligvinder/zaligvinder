(declare-const X String)
; ^(F-)?((2[A|B])|[0-9]{2})[0-9]{3}$
(assert (str.in.re X (re.++ (re.opt (str.to.re "F-")) (re.union (re.++ (str.to.re "2") (re.union (str.to.re "A") (str.to.re "|") (str.to.re "B"))) ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; [D]?[-D]?[0-9]{5}
(assert (str.in.re X (re.++ (re.opt (str.to.re "D")) (re.opt (re.union (str.to.re "-") (str.to.re "D"))) ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
