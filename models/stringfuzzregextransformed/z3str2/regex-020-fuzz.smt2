(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "t")) (str.to.re "")))))
(assert (= (str.len x) 5))
(assert (not (= x "AXb")))
(assert (not (= x "b0kb")))
(assert (not (= x "'\t'")))
(check-sat)
