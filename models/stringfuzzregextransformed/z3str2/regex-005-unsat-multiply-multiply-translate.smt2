(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh"))
(assert (str.in.re x (re.* (re.* (str.to.re "IIIISSSSFFFF")))))
(check-sat)
