(set-logic QF_S)
(declare-const x String)
(assert (= x "dcdP!$ba"))
(assert (str.in.re x (re.union (str.to.re "dc") (re.+ (re.* (str.to.re "9~c:{'hA"))))))
(check-sat)
