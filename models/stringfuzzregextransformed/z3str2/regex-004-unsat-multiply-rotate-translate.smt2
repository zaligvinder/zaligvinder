(set-logic QF_S)
(declare-const x String)
(assert (= x "%%'\x0b''\x0b'MMooMMoo<<"))
(assert (str.in.re x (re.union (re.* (re.* (str.to.re "MMoo<<"))) (str.to.re "%%'\x0b''\x0b'MMoo"))))
(check-sat)
