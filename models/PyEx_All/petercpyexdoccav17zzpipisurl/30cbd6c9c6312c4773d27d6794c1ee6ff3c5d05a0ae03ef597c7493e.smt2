;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun url () String)

(assert (not (not (= (ite (str.contains url ":") 1 0) 0))))

(check-sat)

;(get-value (url))