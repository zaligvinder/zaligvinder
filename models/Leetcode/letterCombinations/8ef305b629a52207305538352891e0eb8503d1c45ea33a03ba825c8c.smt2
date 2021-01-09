
(declare-fun digits () String)

(assert (and (and (and (not (not (not (= (ite (= (str.len (str.substr digits 1 (- (str.len digits) 1))) 0) 1 0) 0)))) (not (not (= (ite (= (str.len digits) 0) 1 0) 0)))) (>= 1 0)) (>= (- (str.len digits) 1) 0)))

(check-sat)

;(get-value (digits))





