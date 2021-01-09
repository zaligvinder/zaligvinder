;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun address () String)

(assert (not (not (not (= (ite (str.contains address "/") 1 0) 0)))))

(check-sat)

;(get-value (address))