(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.+ (re.union (str.to.re "a") (str.to.re "b")))))
(assert (= 2 (str.to.int x)))
(assert (not (= x "5*I' '")))
(assert (not (= x "D:DabbMZa")))
(assert (not (= x "bbbaxcC")))
(assert (not (= x "`9EQ=bb")))
(assert (not (= x "baaeif!J")))
(assert (not (= x "bb")))
(assert (not (= x "aQLRrOaaB")))
(check-sat)
