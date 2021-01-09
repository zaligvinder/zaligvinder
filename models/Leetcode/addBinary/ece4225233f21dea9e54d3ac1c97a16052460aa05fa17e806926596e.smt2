
(declare-fun a () String)

(assert (not (not (= (ite (>= (+ (str.len a) (- 1)) 0) 1 0) 0))))

(check-sat)

;(get-value (a))





