;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun key () String)

(assert (not (not (= (ite (= key "cache-control") 1 0) 0))))

(check-sat)

;(get-value (key))