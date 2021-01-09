;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun headerkey () String)

(assert (and (not (not (not (= (ite (str.contains headerkey "B") 1 0) 0)))) (not (not (= (ite (str.contains headerkey "A") 1 0) 0)))))

(check-sat)

;(get-value (headerkey))