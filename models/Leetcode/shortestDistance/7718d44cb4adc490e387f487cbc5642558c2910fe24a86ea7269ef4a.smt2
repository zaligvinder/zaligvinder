
(declare-fun word2 () String)
(declare-fun in0 () String)
(declare-fun word1 () String)

(assert (and (not (not (not (= (ite (= word2 in0) 1 0) 0)))) (not (not (= (ite (= word1 in0) 1 0) 0)))))

(check-sat)

;(get-value (word2))
;(get-value (in0))
;(get-value (word1))





