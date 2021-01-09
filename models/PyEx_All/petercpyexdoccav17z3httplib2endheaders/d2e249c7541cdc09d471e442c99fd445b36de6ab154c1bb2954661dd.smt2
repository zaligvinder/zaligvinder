(declare-fun key2 () String)

(assert (and (and (and (and (not (not (= (ite (= key2 "te") 1 0) 0))) (not (not (= (ite (= key2 "proxy-authorization") 1 0) 0)))) (not (not (= (ite (= key2 "proxy-authenticate") 1 0) 0)))) (not (not (= (ite (= key2 "keep-alive") 1 0) 0)))) (not (not (= (ite (= key2 "connection") 1 0) 0)))))

(check-sat)

;(get-value (key2))