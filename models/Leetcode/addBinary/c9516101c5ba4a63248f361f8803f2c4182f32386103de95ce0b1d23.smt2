
(declare-fun b () String)
(declare-fun a () String)

(assert (and (and (and (and (and (and (and (and (not (not (= (ite (>= (+ (str.len b) (- 3)) 0) 1 0) 0))) (not (= (ite (>= (+ (str.len a) (- 3)) 0) 1 0) 0))) (not (= (ite (>= (+ (str.len a) (- 3)) 0) 1 0) 0))) (not (= (ite (>= (+ (str.len b) (- 2)) 0) 1 0) 0))) (not (= (ite (>= (+ (str.len a) (- 2)) 0) 1 0) 0))) (not (= (ite (>= (+ (str.len a) (- 2)) 0) 1 0) 0))) (not (= (ite (>= (+ (str.len b) (- 1)) 0) 1 0) 0))) (not (= (ite (>= (+ (str.len a) (- 1)) 0) 1 0) 0))) (not (= (ite (>= (+ (str.len a) (- 1)) 0) 1 0) 0))))

(check-sat)

;(get-value (b))
;(get-value (a))





