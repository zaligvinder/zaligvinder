(declare-const X String)
; ^([34|37]{2})([0-9]{13})$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (str.to.re "3") (str.to.re "4") (str.to.re "|") (str.to.re "7"))) ((_ re.loop 13 13) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
