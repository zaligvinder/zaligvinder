
(declare-fun in0 () String)
(declare-fun in1 () String)

(assert (and (and (not (not (= (ite (not (= (str.at in0 1) (str.at in1 0))) 1 0) 0))) (not (not (= (ite (<= (str.len in1) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len in0) 1) 1 0) 0)))))

(check-sat)

;(get-value (in0))
;(get-value (in1))





