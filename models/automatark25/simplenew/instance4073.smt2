(declare-const X String)
; /*d(9,15)
(assert (str.in_re X (re.++ (re.* (str.to_re "/")) (str.to_re "d9,15\u{a}"))))
(check-sat)
