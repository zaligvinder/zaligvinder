(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "112233"))))
(assert (= (str.len x) 10))
(assert (not (= x "112233AABB")))
(check-sat)
