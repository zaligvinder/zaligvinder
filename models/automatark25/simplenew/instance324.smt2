(declare-const X String)
; /[^imsxeADSUXu]([imsxeADSUXu]*)$/
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "i") (str.to_re "m") (str.to_re "s") (str.to_re "x") (str.to_re "e") (str.to_re "A") (str.to_re "D") (str.to_re "S") (str.to_re "U") (str.to_re "X") (str.to_re "u")) (re.* (re.union (str.to_re "i") (str.to_re "m") (str.to_re "s") (str.to_re "x") (str.to_re "e") (str.to_re "A") (str.to_re "D") (str.to_re "S") (str.to_re "U") (str.to_re "X") (str.to_re "u"))) (str.to_re "/\u{a}"))))
(check-sat)
