(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "11''' '' '''") (re.+ (str.to.re "bbbb")))))
(assert (str.in.re x (re.++ (str.to.re "aa") (re.++ (re.+ (str.to.re "''' '' '''LL''' '' '''")) (re.* (str.to.re "77"))))))
(assert (= 0 (str.len x)))
(check-sat)
