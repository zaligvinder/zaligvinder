
(declare-fun b () String)
(declare-fun a () String)

(assert (and (and (not (not (= (ite (>= (+ (str.len b) (- 1)) 0) 1 0) 0))) (not (= (ite (>= (+ (str.len a) (- 1)) 0) 1 0) 0))) (not (= (ite (>= (+ (str.len a) (- 1)) 0) 1 0) 0))))

(check-sat)

;(get-value (b))
;(get-value (a))





