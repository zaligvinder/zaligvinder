(declare-const X String)
; /(A|B|AB|O)[+-]/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "A") (str.to.re "B") (str.to.re "AB") (str.to.re "O")) (re.union (str.to.re "+") (str.to.re "-")) (str.to.re "/\x0a")))))
(check-sat)
