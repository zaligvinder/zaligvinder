(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= v0 (str.++ "A" (str.++ "B" (str.++ "B" (str.++ "C" (str.++ "D" "E")))))))

(check-sat)
(get-model)
