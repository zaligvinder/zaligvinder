(declare-const X String)
; .*[Pp]en[Ii1][\$s].*
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "P") (str.to.re "p")) (str.to.re "en") (re.union (str.to.re "I") (str.to.re "i") (str.to.re "1")) (re.union (str.to.re "$") (str.to.re "s")) (re.* re.allchar) (str.to.re "\x0a")))))
(check-sat)
