(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.union (re.union (re.+ (str.to.re ";B")) (re.* (str.to.re "c\\"))) (re.* (str.to.re "bb")))))
(assert (str.in.re x (re.++ (str.to.re "n#a") (str.to.re "aa"))))
(assert (= (str.to.int x) 5))
(check-sat)
