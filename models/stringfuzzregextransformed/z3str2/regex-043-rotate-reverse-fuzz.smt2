(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "") (str.to.re "b")))))
(assert (= 3 (str.to.int x)))
(assert (not (= x "bZ")))
(assert (not (= x "ab")))
(assert (not (= x "TySYWi")))
(assert (not (= x "UX")))
(assert (not (= x "{)y")))
(assert (not (= x "")))
(assert (not (= x "a")))
(check-sat)
