
(declare-fun in1 () String)
(declare-fun in0 () String)

(assert (not (not (not (= (ite (not (= (str.at in1 0) (str.at in0 0))) 1 0) 0)))))

(check-sat)

;(get-value (in1))
;(get-value (in0))





