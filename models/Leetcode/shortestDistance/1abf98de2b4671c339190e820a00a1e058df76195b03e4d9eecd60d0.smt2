
(declare-fun word1 () String)
(declare-fun in0 () String)

(assert (not (not (= (ite (= word1 in0) 1 0) 0))))

(check-sat)

;(get-value (word1))
;(get-value (in0))





