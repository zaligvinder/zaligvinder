
(declare-fun a () String)
(declare-fun b () String)

(assert (and (and (and (and (and (and (not (not (= (ite (>= (+ (str.len a) (- 3)) 0) 1 0) 0))) (not (= (ite (>= (+ (str.len b) (- 2)) 0) 1 0) 0))) (not (= (ite (>= (+ (str.len a) (- 2)) 0) 1 0) 0))) (not (= (ite (>= (+ (str.len a) (- 2)) 0) 1 0) 0))) (not (= (ite (>= (+ (str.len b) (- 1)) 0) 1 0) 0))) (not (= (ite (>= (+ (str.len a) (- 1)) 0) 1 0) 0))) (not (= (ite (>= (+ (str.len a) (- 1)) 0) 1 0) 0))))

(check-sat)

;(get-value (a))
;(get-value (b))





