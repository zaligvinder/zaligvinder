(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (not (= (str.len v0) 0)))
(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" "E")))))))
(assert (= v0 v0))
(assert (not (str.in_re v0 (re.++ (str.to_re "F") (re.union (re.+ (str.to_re "C")) (re.++ (re.+ (str.to_re "C")) (str.to_re "G")))))))

(check-sat)
(get-model)
