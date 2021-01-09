
(declare-fun s () String)
(declare-fun in0 () String)
(declare-fun in1 () String)

(assert (and (and (not (not (= (ite (<= (+ (- (str.len s) (* (str.len in0) 2)) 1) 0) 1 0) 0))) (not (= (ite (= in0 in1) 1 0) 0))) (not (= (ite (= in0 in1) 1 0) 0))))

(check-sat)

;(get-value (s))
;(get-value (in0))
;(get-value (in1))





