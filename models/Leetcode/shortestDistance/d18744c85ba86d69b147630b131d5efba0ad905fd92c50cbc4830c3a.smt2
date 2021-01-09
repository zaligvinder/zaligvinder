
(declare-fun word1 () String)
(declare-fun in1 () String)
(declare-fun in0 () String)

(assert (and (not (not (= (ite (= word1 in1) 1 0) 0))) (not (= (ite (= word1 in0) 1 0) 0))))

(check-sat)

;(get-value (word1))
;(get-value (in1))
;(get-value (in0))





