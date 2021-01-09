;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun key2 () String)

(assert (and (and (and (not (not (not (= (ite (str.contains (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1))) "A") 1 0) 0)))) (not (= (ite (str.contains key2 "A") 1 0) 0))) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)))

(check-sat)

;(get-value (key2))