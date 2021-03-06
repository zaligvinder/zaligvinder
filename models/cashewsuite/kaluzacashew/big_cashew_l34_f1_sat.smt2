(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v6 () String)
(declare-fun v7 () String)
(declare-fun v8 () String)
(declare-fun v9 () String)
(declare-fun v10 () String)
(declare-fun v12 () String)
(declare-fun v11 () String)
(declare-fun v0 () String)
(declare-fun v1 () String)
(declare-fun v2 () String)
(declare-fun v3 () String)
(declare-fun v4 () String)
(declare-fun v5 () String)

(assert (= (str.len v0) 0))
(assert (= (str.len v1) 0))
(assert (>= (str.len v2) 1))
(assert (>= (str.len v3) 1))
(assert (not (= v4 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "E" (str.++ "E" (str.++ "E" (str.++ "E" (str.++ "F" (str.++ "G" (str.++ "H" (str.++ "I" (str.++ "D" (str.++ "J" (str.++ "K" (str.++ "L" (str.++ "M" (str.++ "N" "B"))))))))))))))))))))))
(assert (= v5 "O"))
(assert (= v6 (str.++ v7 v8)))
(assert (= v7 (str.++ v9 v5)))
(assert (= v10 (str.++ v4 v11)))
(assert (= v3 (str.++ v0 v6)))
(assert (= v3 (str.++ v1 v12)))
(assert (= v3 (str.++ v2 v10)))
(assert (not (str.in.re v12 (str.to.re "#"))))
(assert (not (str.in.re v9 (str.to.re "O"))))

(check-sat)
(get-model)
