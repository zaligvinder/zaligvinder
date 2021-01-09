
(declare-fun str () String)

(assert (and (and (and (and (and (and (and (not (not (not (= (ite (str.contains (str.substr str (+ (str.indexof str " " 0) 1) (- (str.len str) (+ (str.indexof str " " 0) 1))) " ") 1 0) 0)))) (not (not (= (ite (= (str.len (str.substr str (+ (str.indexof str " " 0) 1) (- (str.len str) (+ (str.indexof str " " 0) 1)))) 0) 1 0) 0)))) (not (= (ite (str.contains str " ") 1 0) 0))) (not (not (= (ite (= (str.len str) 0) 1 0) 0)))) (>= (+ (str.indexof str " " 0) 1) 0)) (>= (- (str.len str) (+ (str.indexof str " " 0) 1)) 0)) (>= (+ (str.indexof str " " 0) 1) 0)) (>= (- (str.len str) (+ (str.indexof str " " 0) 1)) 0)))

(check-sat)

;(get-value (str))





