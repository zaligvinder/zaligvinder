;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun network () String)

(assert (not (not (not (= (ite (= (str.len network) 0) 1 0) 0)))))

(check-sat)

;(get-value (network))