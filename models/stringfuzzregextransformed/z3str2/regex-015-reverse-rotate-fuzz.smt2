(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "'\x0b'""sQ0aGZa"))))
(assert (str.in.re y (re.* (re.+ (str.to.re "[5?")))))
(assert (= (str.len x) 5))
(assert (= (str.to.int y) 1))
(check-sat)
