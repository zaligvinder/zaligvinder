(declare-const X String)
; ^[9][7|8][1|0][0-9]{2}$
(assert (not (str.in_re X (re.++ (str.to_re "9") (re.union (str.to_re "7") (str.to_re "|") (str.to_re "8")) (re.union (str.to_re "1") (str.to_re "|") (str.to_re "0")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
