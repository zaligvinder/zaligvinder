(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.union (str.to.re "") (re.+ (str.to.re "~MVl*e]Ay'\r'=C{0'\n'q!r'")))))
(assert (str.in.re x (re.++ (str.to.re "") (re.union (re.* (str.to.re "")) (re.* (str.to.re "e"))))))
(assert (= 0 (str.to.int x)))
(check-sat)
