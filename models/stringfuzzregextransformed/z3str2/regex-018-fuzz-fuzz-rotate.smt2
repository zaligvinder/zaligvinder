(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "0T") (str.to.re ",Q~")))))
(assert (= 12 (str.len x)))
(assert (not (= x "\\\\n'b@k")))
(check-sat)
