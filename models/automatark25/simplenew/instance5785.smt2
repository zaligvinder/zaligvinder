(declare-const X String)
; ^([51|52|53|54|55]{2})([0-9]{14})$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (str.to.re "5") (str.to.re "1") (str.to.re "|") (str.to.re "2") (str.to.re "3") (str.to.re "4"))) ((_ re.loop 14 14) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
