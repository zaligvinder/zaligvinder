;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun key1 () String)
(declare-fun key2 () String)

(assert (and (and (and (and (and (and (and (and (not (not (not (= (ite (= key1 "proxy-authorization") 1 0) 0)))) (not (not (= (ite (= key1 "proxy-authenticate") 1 0) 0)))) (not (not (= (ite (= key1 "keep-alive") 1 0) 0)))) (not (not (= (ite (= key1 "connection") 1 0) 0)))) (not (= (ite (= key2 "te") 1 0) 0))) (not (not (= (ite (= key2 "proxy-authorization") 1 0) 0)))) (not (not (= (ite (= key2 "proxy-authenticate") 1 0) 0)))) (not (not (= (ite (= key2 "keep-alive") 1 0) 0)))) (not (not (= (ite (= key2 "connection") 1 0) 0)))))

(check-sat)

;(get-value (key1))
;(get-value (key2))