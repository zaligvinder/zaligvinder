;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun scheme () String)

(assert (and (not (not (not (= (ite (not (= (str.len scheme) 0)) 1 0) 0)))) (not (not (= (ite (not (= (str.len scheme) 0)) 1 0) 0)))))

(check-sat)

;(get-value (scheme))