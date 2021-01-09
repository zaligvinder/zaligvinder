
(declare-fun pattern () String)
(declare-fun str () String)

(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not (not (= (ite (= (str.at pattern 0) (str.at pattern 1)) 1 0) 0))) (not (not (= (ite (not (= (str.at pattern 0) (str.at pattern 0))) 1 0) 0)))) (not (not (= (ite (not (= (str.substr str 0 (- (str.indexof str " " 0) 0)) (str.substr str 0 (- (str.indexof str " " 0) 0)))) 1 0) 0)))) (not (not (= (ite (not (= (str.len pattern) 2)) 1 0) 0)))) (not (not (= (ite (str.contains (str.substr str (+ (str.indexof str " " 0) 1) (- (str.len str) (+ (str.indexof str " " 0) 1))) " ") 1 0) 0)))) (not (not (= (ite (= (str.len (str.substr str (+ (str.indexof str " " 0) 1) (- (str.len str) (+ (str.indexof str " " 0) 1)))) 0) 1 0) 0)))) (not (= (ite (str.contains str " ") 1 0) 0))) (not (not (= (ite (= (str.len str) 0) 1 0) 0)))) (>= 0 0)) (>= (- (str.indexof str " " 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof str " " 0) 0) 0)) (>= (+ (str.indexof str " " 0) 1) 0)) (>= (- (str.len str) (+ (str.indexof str " " 0) 1)) 0)) (>= (+ (str.indexof str " " 0) 1) 0)) (>= (- (str.len str) (+ (str.indexof str " " 0) 1)) 0)))

(check-sat)

;(get-value (pattern))
;(get-value (str))





