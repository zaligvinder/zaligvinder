(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.* (re.union (str.to.re "U") (str.to.re "n")))))
(assert (= 3 (str.len x)))
(assert (not (= x "Unn")))
(assert (not (= x "UnU")))
(assert (not (= x "nnU")))
(assert (not (= x "nnn")))
(assert (not (= x "nUU")))
(assert (not (= x "nUn")))
(assert (not (= x "UUU")))
(check-sat)
