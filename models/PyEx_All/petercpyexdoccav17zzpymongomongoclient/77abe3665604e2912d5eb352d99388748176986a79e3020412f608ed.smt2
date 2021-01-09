;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun uri () String)

(assert (and (and (and (and (and (not (not (not (= (ite (= (str.len (str.substr uri (+ (str.indexof uri "," 0) 1) (- (str.len uri) (+ (str.indexof uri "," 0) 1)))) 0) 1 0) 0)))) (not (= (ite (str.contains uri ",") 1 0) 0))) (not (not (= (ite (= (str.len uri) 0) 1 0) 0)))) (not (not (= (ite (str.contains uri "://") 1 0) 0)))) (>= (+ (str.indexof uri "," 0) 1) 0)) (>= (- (str.len uri) (+ (str.indexof uri "," 0) 1)) 0)))

(check-sat)

;(get-value (uri))