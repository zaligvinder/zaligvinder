
(declare-fun path () String)

(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (not (not (= (ite (not (= (str.substr path 0 (- (str.indexof path "/" 0) 0)) ".")) 1 0) 0))) (not (not (= (ite (= (str.substr path 0 (- (str.indexof path "/" 0) 0)) "..") 1 0) 0)))) (not (= (ite (not (= (str.len (str.substr path 0 (- (str.indexof path "/" 0) 0))) 0)) 1 0) 0))) (not (= (ite (= (str.len (str.substr path (+ (str.indexof path "/" 0) 1) (- (str.len path) (+ (str.indexof path "/" 0) 1)))) 0) 1 0) 0))) (not (= (ite (str.contains path "/") 1 0) 0))) (not (not (= (ite (= (str.len path) 0) 1 0) 0)))) (>= 0 0)) (>= (- (str.indexof path "/" 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof path "/" 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof path "/" 0) 0) 0)) (>= (+ (str.indexof path "/" 0) 1) 0)) (>= (- (str.len path) (+ (str.indexof path "/" 0) 1)) 0)))

(check-sat)

;(get-value (path))





