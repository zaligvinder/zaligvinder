(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "<") (re.* (str.to.re "'\x0b'")))))
(assert (str.in.re x (re.++ (str.to.re "<") (re.++ (str.to.re "'\x0b'") (re.* (str.to.re "k"))))))
(assert (= (str.len x) 3))
(check-sat)
