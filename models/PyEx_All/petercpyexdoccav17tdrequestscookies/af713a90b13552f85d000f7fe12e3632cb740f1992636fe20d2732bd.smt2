;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun cookievalue () String)

(assert (and (and (not (not (= (ite (str.prefixof """" cookievalue) 1 0) 0))) (not (not (= (ite (str.contains cookievalue "\\""") 1 0) 0)))) (not (= (ite (str.prefixof """" cookievalue) 1 0) 0))))

(check-sat)

;(get-value (cookievalue))