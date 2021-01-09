
(declare-fun input () String)

(assert (and (and (and (and (not (not (= (ite (> (- (+ (- (+ 0 (str.len input)) 0) 1) 1) 0) 1 0) 0))) (not (= (ite (str.contains input ".") 1 0) 0))) (not (not (= (ite (str.contains input "\n") 1 0) 0)))) (not (not (= (ite (= (str.len input) 0) 1 0) 0)))) (not (not (= (ite (= (str.len input) 0) 1 0) 0)))))

(check-sat)

;(get-value (input))





