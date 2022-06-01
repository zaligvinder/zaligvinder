(declare-const X String)
; .*[Vv][Ii1]agr.*
(assert (str.in_re X (re.++ (re.* re.allchar) (re.union (str.to_re "V") (str.to_re "v")) (re.union (str.to_re "I") (str.to_re "i") (str.to_re "1")) (str.to_re "agr") (re.* re.allchar) (str.to_re "\u{a}"))))
(check-sat)
