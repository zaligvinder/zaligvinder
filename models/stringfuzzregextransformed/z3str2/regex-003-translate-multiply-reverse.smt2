(set-logic QF_S)
(declare-const x String)
(assert (= x "NN((\\\\\\\\\\\\\\\\((\\\\\\\\\\\\\\\\]]''bb00xx\\\\\\\\''NN((\\\\\\\\\\\\\\\\"))
(assert (str.in.re x (re.* (re.union (str.to.re "((\\\\\\\\\\\\\\\\]]''bb00xx\\\\\\\\''") (str.to.re "NN((\\\\\\\\\\\\\\\\")))))
(check-sat)
