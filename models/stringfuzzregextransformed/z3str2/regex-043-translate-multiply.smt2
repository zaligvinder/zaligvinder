(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.* (re.union (str.to.re "{{") (str.to.re "ZZ")))))
(assert (= 6 (str.len x)))
(assert (not (= x "{{ZZZZ")))
(assert (not (= x "{{ZZ{{")))
(assert (not (= x "ZZZZ{{")))
(assert (not (= x "ZZZZZZ")))
(assert (not (= x "ZZ{{{{")))
(assert (not (= x "ZZ{{ZZ")))
(assert (not (= x "{{{{{{")))
(check-sat)
