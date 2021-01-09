(declare-const X String)
; /[^imsxeADSUXu]([imsxeADSUXu]*)$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "i") (str.to.re "m") (str.to.re "s") (str.to.re "x") (str.to.re "e") (str.to.re "A") (str.to.re "D") (str.to.re "S") (str.to.re "U") (str.to.re "X") (str.to.re "u")) (re.* (re.union (str.to.re "i") (str.to.re "m") (str.to.re "s") (str.to.re "x") (str.to.re "e") (str.to.re "A") (str.to.re "D") (str.to.re "S") (str.to.re "U") (str.to.re "X") (str.to.re "u"))) (str.to.re "/\x0a"))))
(check-sat)
