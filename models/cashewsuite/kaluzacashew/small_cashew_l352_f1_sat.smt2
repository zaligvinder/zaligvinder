(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (not (= (str.len v0) 0)))
(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "F" (str.++ "G" (str.++ "H" (str.++ "I" "J"))))))))))))
(assert (= v0 v0))
(assert (not (str.in.re v0 (re.++ (str.to.re "K") (re.union (re.+ (str.to.re "L")) (re.++ (re.+ (str.to.re "L")) (str.to.re "M")))))))

(check-sat)
(get-model)
