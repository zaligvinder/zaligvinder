;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun id () String)

(assert (not (not (= (ite (= (str.len id) 24) 1 0) 0))))

(check-sat)

;(get-value (id))