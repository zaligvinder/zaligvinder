(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re y (re.* (re.+ (str.to.re "aazzYY--VV%%))ssjjcc--xx__{{tt")))))
(assert (= (str.len y) 10))
(check-sat)
