(declare-const X String)
; (\b(1|2|3|4|5|6|7|8|9)?[0-9]\b)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.union (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9"))) (re.range "0" "9"))))
(check-sat)
