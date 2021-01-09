;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun json () String)

(assert (not (not (not (= (ite (str.prefixof "\xef\xbb\xbf" json) 1 0) 0)))))

(check-sat)

;(get-value (json))