(set-logic QF_S)
(declare-const x String)
(assert (= (str.to.int x) 9))
(assert (str.in.re x (re.+ (str.to.re "pii6Qtk"))))
(assert (str.in.re x (re.* (str.to.re "=NYiOY|"))))
(check-sat)
