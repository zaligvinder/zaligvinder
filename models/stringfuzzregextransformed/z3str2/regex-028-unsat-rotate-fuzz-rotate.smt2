(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "@m'\\n'"))))
(assert (str.in.re x (re.* (str.to.re "aM"))))
(assert (str.in.re x (re.* (str.to.re "abac"))))
(assert (> (str.to.int x) 2))
(check-sat)
