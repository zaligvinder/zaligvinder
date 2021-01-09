;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun key2 () String)

(assert (not (not (= (ite (= key2 "cache-control") 1 0) 0))))

(check-sat)

;(get-value (key2))