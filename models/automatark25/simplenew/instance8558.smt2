(declare-const X String)
; ^([012346789][0-9]{4})$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9")) ((_ re.loop 4 4) (re.range "0" "9"))))))
(check-sat)
