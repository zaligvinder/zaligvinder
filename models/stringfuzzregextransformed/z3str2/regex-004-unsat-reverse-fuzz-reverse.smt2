(set-logic QF_S)
(declare-const x String)
(assert (= x "abdEap8Vhd"))
(assert (str.in.re x (re.union (re.* (str.to.re "aU0")) (re.+ (str.to.re "ce")))))
(check-sat)
