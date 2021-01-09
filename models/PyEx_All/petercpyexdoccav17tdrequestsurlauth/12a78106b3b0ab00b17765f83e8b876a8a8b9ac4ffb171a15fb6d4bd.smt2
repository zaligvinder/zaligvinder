;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun url () String)

(assert (and (and (and (not (not (not (= (ite (= (str.substr url 0 (- 2 0)) "//") 1 0) 0)))) (not (not (= (ite (> (str.indexof url ":" 0) 0) 1 0) 0)))) (>= 0 0)) (>= (- 2 0) 0)))

(check-sat)

;(get-value (url))