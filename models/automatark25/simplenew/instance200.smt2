(declare-const X String)
; ^((00|\+)49)?(0?1[5-7][0-9]{1,})$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "00") (str.to_re "+")) (str.to_re "49"))) (str.to_re "\u{a}") (re.opt (str.to_re "0")) (str.to_re "1") (re.range "5" "7") (re.+ (re.range "0" "9"))))))
(check-sat)
