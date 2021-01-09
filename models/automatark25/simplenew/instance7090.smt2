(declare-const X String)
; (\b(10|11|12|13|14|15|16|17|18|19)[0-9]\b)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.range "0" "9") (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9")))))
(check-sat)
