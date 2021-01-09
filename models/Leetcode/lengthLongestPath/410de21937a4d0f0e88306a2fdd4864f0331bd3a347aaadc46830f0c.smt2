
(declare-fun input () String)

(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not (not (not (= (ite (str.contains (str.substr input (+ (str.indexof input "\n" 0) 1) (- (str.len input) (+ (str.indexof input "\n" 0) 1))) ".") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr input 0 (- (str.indexof input "\n" 0) 0)) ".") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr input (+ (str.indexof input "\n" 0) 1) (- (str.len input) (+ (str.indexof input "\n" 0) 1))) "\n") 1 0) 0)))) (not (not (= (ite (= (str.len (str.substr input (+ (str.indexof input "\n" 0) 1) (- (str.len input) (+ (str.indexof input "\n" 0) 1)))) 0) 1 0) 0)))) (not (= (ite (str.contains input "\n") 1 0) 0))) (not (not (= (ite (= (str.len input) 0) 1 0) 0)))) (not (not (= (ite (= (str.len input) 0) 1 0) 0)))) (>= (+ (str.indexof input "\n" 0) 1) 0)) (>= (- (str.len input) (+ (str.indexof input "\n" 0) 1)) 0)) (>= 0 0)) (>= (- (str.indexof input "\n" 0) 0) 0)) (>= (+ (str.indexof input "\n" 0) 1) 0)) (>= (- (str.len input) (+ (str.indexof input "\n" 0) 1)) 0)) (>= (+ (str.indexof input "\n" 0) 1) 0)) (>= (- (str.len input) (+ (str.indexof input "\n" 0) 1)) 0)))

(check-sat)

;(get-value (input))





