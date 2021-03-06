(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v6 () String)
(declare-fun v7 () String)
(declare-fun v8 () String)
(declare-fun v0 () String)
(declare-fun v1 () String)
(declare-fun v2 () String)
(declare-fun v3 () String)
(declare-fun v4 () String)
(declare-fun v5 () String)

(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "C" "D")))))))
(assert (= v1 "E"))
(assert (= v2 "E"))
(assert (= v0 v0))
(assert (= v3 v3))
(assert (= v4 v4))
(assert (= v5 (str.++ v0 v1)))
(assert (= v6 (str.++ v7 v2)))
(assert (= v8 (str.++ v6 v3)))
(assert (= v4 (str.++ v5 v8)))
(assert (not (str.in.re v0 (str.to.re "E"))))
(assert (not (str.in.re v7 (str.to.re "E"))))

(check-sat)
(get-model)
