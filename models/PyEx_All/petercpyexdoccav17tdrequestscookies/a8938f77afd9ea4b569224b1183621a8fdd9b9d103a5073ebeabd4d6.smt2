;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun cookievalue () String)

(assert (not (not (not (= (ite (str.prefixof """" cookievalue) 1 0) 0)))))

(check-sat)

;(get-value (cookievalue))