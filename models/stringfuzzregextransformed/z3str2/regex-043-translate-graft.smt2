(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.* (str.to.re "{"))))
(assert (= (str.len x) 3))
(assert (not (= x "{ZZ")))
(assert (not (= x "{Z{")))
(assert (not (= x "ZZ{")))
(assert (not (= x "ZZZ")))
(assert (not (= x "Z{{")))
(assert (not (= x "Z{Z")))
(assert (not (= x "{{{")))
(check-sat)
