;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun key () String)
(declare-fun value () String)

(assert (and (and (and (and (and (and (and (not (not (= (ite (= (str.at value 0) " ") 1 0) 0))) (not (not (= (ite (= (str.len value) 0) 1 0) 0)))) (not (= (ite (= (str.indexof value "=" 0) (- 1)) 1 0) 0))) (not (not (= (ite (not (= (str.indexof value "=" 0) (- 1))) 1 0) 0)))) (not (not (= (ite (str.contains value ",") 1 0) 0)))) (not (not (= (ite (= (str.len value) 0) 1 0) 0)))) (not (= (ite (= key "cache-control") 1 0) 0))) (not (= (ite (= key "cache-control") 1 0) 0))))

(check-sat)

;(get-value (key))
;(get-value (value))