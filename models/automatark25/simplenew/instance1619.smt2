(declare-const X String)
; ^(([0]([2|3|4|5|6|8|9|7])))\d{7,8}$
(assert (str.in.re X (re.++ ((_ re.loop 7 8) (re.range "0" "9")) (str.to.re "\x0a0") (re.union (str.to.re "2") (str.to.re "|") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "8") (str.to.re "9") (str.to.re "7")))))
(check-sat)
