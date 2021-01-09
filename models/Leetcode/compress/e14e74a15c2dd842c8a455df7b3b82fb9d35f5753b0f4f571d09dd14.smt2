
(declare-fun in1 () String)
(declare-fun in0 () String)

(assert (not (not (not (= (ite (not (= in1 in0)) 1 0) 0)))))

(check-sat)

;(get-value (in1))
;(get-value (in0))





