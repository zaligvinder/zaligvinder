(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "---------"))
(assert (str.in.re x (re.* (re.* (str.to.re "x'\x0c'Y")))))
(check-sat)
