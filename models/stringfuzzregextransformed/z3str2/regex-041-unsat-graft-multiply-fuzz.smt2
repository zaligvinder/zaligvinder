(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "") (re.* (str.to.re "b")))))
(assert (str.in.re x (re.union (str.to.re "Wc") (re.+ (str.to.re "cc")))))
(assert (str.in.re x (re.++ (str.to.re "aa") (re.++ (re.+ (str.to.re "")) (str.to.re "d=")))))
(check-sat)
