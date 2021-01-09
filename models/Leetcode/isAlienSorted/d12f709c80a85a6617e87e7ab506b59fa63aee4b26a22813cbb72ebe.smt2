
(declare-fun in1 () String)
(declare-fun in0 () String)

(assert (not (not (not (= (ite (< (str.len in1) (str.len in0)) 1 0) 0)))))

(check-sat)

;(get-value (in1))
;(get-value (in0))





