;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun address () String)

(assert (and (and (and (not (not (not (= (ite (str.contains (str.substr address (+ (str.indexof address "/" 0) 1) (- (str.len address) (+ (str.indexof address "/" 0) 1))) "/") 1 0) 0)))) (not (= (ite (str.contains address "/") 1 0) 0))) (>= (+ (str.indexof address "/" 0) 1) 0)) (>= (- (str.len address) (+ (str.indexof address "/" 0) 1)) 0)))

(check-sat)

;(get-value (address))