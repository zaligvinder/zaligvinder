;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun key1 () String)

(assert (and (and (and (and (and (and (and (not (not (not (= (ite (= key1 "upgrade") 1 0) 0)))) (not (not (= (ite (= key1 "transfer-encoding") 1 0) 0)))) (not (not (= (ite (= key1 "trailers") 1 0) 0)))) (not (not (= (ite (= key1 "te") 1 0) 0)))) (not (not (= (ite (= key1 "proxy-authorization") 1 0) 0)))) (not (not (= (ite (= key1 "proxy-authenticate") 1 0) 0)))) (not (not (= (ite (= key1 "keep-alive") 1 0) 0)))) (not (not (= (ite (= key1 "connection") 1 0) 0)))))

(check-sat)

;(get-value (key1))