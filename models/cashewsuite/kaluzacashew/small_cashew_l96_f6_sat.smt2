(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (not (= (str.len v0) 0)))
(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" "E")))))))
(assert (= v0 v0))
(assert (not (str.in.re v0 (re.++ (str.to.re "F") (re.union (re.+ (str.to.re "C")) (re.++ (re.+ (str.to.re "C")) (str.to.re "G")))))))

(check-sat)
(get-model)
