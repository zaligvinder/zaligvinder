(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "c4!'\x0b'IScb|"))
(assert (str.in.re x (re.* (re.* (str.to.re "ba")))))
(check-sat)
