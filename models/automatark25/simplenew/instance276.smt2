(declare-const X String)
; ^[9][7|8][1|0][0-9]{2}$
(assert (not (str.in.re X (re.++ (str.to.re "9") (re.union (str.to.re "7") (str.to.re "|") (str.to.re "8")) (re.union (str.to.re "1") (str.to.re "|") (str.to.re "0")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
