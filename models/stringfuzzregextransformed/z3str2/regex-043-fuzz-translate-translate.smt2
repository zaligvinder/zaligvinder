(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.+ (re.union (str.to.re "S") (str.to.re "a]a")))))
(assert (= 6 (str.to.int x)))
(assert (not (= x "=d")))
(assert (not (= x "y")))
(assert (not (= x "ddvg##")))
(assert (not (= x "dvP~")))
(assert (not (= x "SS")))
(assert (not (= x "a@'\r'0Ja")))
(assert (not (= x ":e' '#(' 'S")))
(check-sat)
