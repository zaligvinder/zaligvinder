(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.union (str.to.re "&&") (re.+ (str.to.re "ZZ")))))
(assert (str.in.re x (re.union (str.to.re "") (re.union (re.* (str.to.re "bb")) (re.* (str.to.re "}}"))))))
(assert (= 14 (str.to.int x)))
(check-sat)
