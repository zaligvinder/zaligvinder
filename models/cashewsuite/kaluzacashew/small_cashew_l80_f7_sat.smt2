(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= (str.len v0) 0))
(assert (= v0 v0))
(assert (not (str.in.re v0 (re.++ (str.to.re "A") (re.union (re.+ (str.to.re "B")) (re.++ (re.+ (str.to.re "B")) (str.to.re "C")))))))

(check-sat)
(get-model)
