(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (re.+ (str.to.re "{aaa")) (str.to.re "}:,{+_Z")))))
(assert (str.in.re y (re.* (re.union (re.* (str.to.re "a")) (str.to.re "b'\x0c'{9``b")))))
(assert (not (= x y)))
(assert (= (str.len x) (str.len y)))
(check-sat)
