(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re ".") (str.to.re "3'\t'vPf!")))))
(assert (= 6 (str.len x)))
(assert (not (= x "),/V6:'\x0b'\\'m7")))
(check-sat)
