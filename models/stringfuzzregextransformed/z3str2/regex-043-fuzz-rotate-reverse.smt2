(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "b") (str.to.re "a")))))
(assert (= 4 (str.to.int x)))
(assert (not (= x "bba")))
(assert (not (= x "hAha")))
(assert (not (= x "~c{'w")))
(assert (not (= x "ET*YG")))
(assert (not (= x "a%UZ")))
(assert (not (= x "a}b1")))
(assert (not (= x "vG""""""""")))
(check-sat)
