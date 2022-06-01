(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= v0 (str.++ "A" (str.++ "B" (str.++ "B" (str.++ "C" (str.++ "C" (str.++ "D" (str.++ "B" (str.++ "E" (str.++ "F" "G")))))))))))

(check-sat)
(get-model)
