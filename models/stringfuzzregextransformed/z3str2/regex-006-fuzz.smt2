(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "Bq<h:c"))
(assert (str.in.re x (re.* (re.+ (str.to.re "bc")))))
(check-sat)
