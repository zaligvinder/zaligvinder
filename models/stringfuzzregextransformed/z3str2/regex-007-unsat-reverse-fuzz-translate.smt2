(set-logic QF_S)
(declare-const x String)
(assert (= (str.len x) 12))
(assert (str.in.re x (re.* (str.to.re "'\t'-s:"))))
(assert (str.in.re x (re.* (str.to.re "LIJ19"))))
(check-sat)
