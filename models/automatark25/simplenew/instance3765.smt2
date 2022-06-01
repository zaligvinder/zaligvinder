(declare-const X String)
; .*[Oo0][Ee][Mm].*
(assert (str.in_re X (re.++ (re.* re.allchar) (re.union (str.to_re "O") (str.to_re "o") (str.to_re "0")) (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "M") (str.to_re "m")) (re.* re.allchar) (str.to_re "\u{a}"))))
(check-sat)
