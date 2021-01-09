;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun uri () String)

(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not (not (not (= (ite (str.contains (str.substr uri 1 (- (- 1) 1)) "L") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr uri 1 (- (- 1) 1)) "K") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr uri 1 (- (- 1) 1)) "J") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr uri 1 (- (- 1) 1)) "I") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr uri 1 (- (- 1) 1)) "H") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr uri 1 (- (- 1) 1)) "G") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr uri 1 (- (- 1) 1)) "F") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr uri 1 (- (- 1) 1)) "E") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr uri 1 (- (- 1) 1)) "D") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr uri 1 (- (- 1) 1)) "C") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr uri 1 (- (- 1) 1)) "B") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr uri 1 (- (- 1) 1)) "A") 1 0) 0)))) (not (= (ite (= (str.indexof uri "]:" 0) (- 1)) 1 0) 0))) (not (not (= (ite (= (str.indexof uri "]" 0) (- 1)) 1 0) 0)))) (not (= (ite (= (str.at uri 0) "[") 1 0) 0))) (not (= (ite (not (= (str.len uri) 0)) 1 0) 0))) (not (not (= (ite (str.contains uri ",") 1 0) 0)))) (not (not (= (ite (= (str.len uri) 0) 1 0) 0)))) (not (not (= (ite (str.contains uri "://") 1 0) 0)))) (>= 1 0)) (>= (- (- 1) 1) 0)) (>= 1 0)) (>= (- (- 1) 1) 0)) (>= 1 0)) (>= (- (- 1) 1) 0)) (>= 1 0)) (>= (- (- 1) 1) 0)) (>= 1 0)) (>= (- (- 1) 1) 0)) (>= 1 0)) (>= (- (- 1) 1) 0)) (>= 1 0)) (>= (- (- 1) 1) 0)) (>= 1 0)) (>= (- (- 1) 1) 0)) (>= 1 0)) (>= (- (- 1) 1) 0)) (>= 1 0)) (>= (- (- 1) 1) 0)) (>= 1 0)) (>= (- (- 1) 1) 0)) (>= 1 0)) (>= (- (- 1) 1) 0)))

(check-sat)

;(get-value (uri))