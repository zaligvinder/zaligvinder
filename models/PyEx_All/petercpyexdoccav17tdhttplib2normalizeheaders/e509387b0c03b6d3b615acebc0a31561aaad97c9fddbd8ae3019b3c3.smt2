;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun key2 () String)
(declare-fun key1 () String)

(assert (and (not (not (= (ite (str.contains key1 "A") 1 0) 0))) (not (= (ite (= key1 key2) 1 0) 0))))

(check-sat)

;(get-value (key2))
;(get-value (key1))