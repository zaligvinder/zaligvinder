(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (not (= (str.len v0) 0)))
(assert (= v0 v0))
(assert (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "F" (str.++ "G" (str.++ "H" (str.++ "I" "J")))))))))))
(assert (not (str.in_re v0 (re.++ (str.to_re "K") (re.union (re.+ (str.to_re "L")) (re.++ (re.+ (str.to_re "L")) (str.to_re "M")))))))

(check-sat)
(get-model)
