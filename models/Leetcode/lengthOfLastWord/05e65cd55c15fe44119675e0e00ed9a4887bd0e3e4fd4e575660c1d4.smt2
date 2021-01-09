
(declare-fun s () String)

(assert (and (and (and (and (and (not (not (= (ite (= (str.len (str.substr s (+ (str.indexof s " " 0) 1) (- (str.len s) (+ (str.indexof s " " 0) 1)))) 0) 1 0) 0))) (not (= (ite (str.contains s " ") 1 0) 0))) (not (not (= (ite (= (str.len s) 0) 1 0) 0)))) (not (not (= (ite (= (str.len s) 0) 1 0) 0)))) (>= (+ (str.indexof s " " 0) 1) 0)) (>= (- (str.len s) (+ (str.indexof s " " 0) 1)) 0)))

(check-sat)

;(get-value (s))





