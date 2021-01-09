;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun value1 () String)
(declare-fun key1 () String)
(declare-fun key2 () String)

(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not (not (not (= (ite (= key2 "proxy-authorization") 1 0) 0)))) (not (not (= (ite (= key2 "proxy-authenticate") 1 0) 0)))) (not (not (= (ite (= key2 "keep-alive") 1 0) 0)))) (not (not (= (ite (= key2 "connection") 1 0) 0)))) (not (= (ite (= key1 "connection") 1 0) 0))) (not (not (= (ite (= (str.at value1 (- (str.len value1) 1)) "\f") 1 0) 0)))) (not (not (= (ite (= (str.at value1 (- (str.len value1) 1)) "\v") 1 0) 0)))) (not (not (= (ite (= (str.at value1 (- (str.len value1) 1)) "\r") 1 0) 0)))) (not (not (= (ite (= (str.at value1 (- (str.len value1) 1)) "\n") 1 0) 0)))) (not (not (= (ite (= (str.at value1 (- (str.len value1) 1)) "\t") 1 0) 0)))) (not (not (= (ite (= (str.at value1 (- (str.len value1) 1)) " ") 1 0) 0)))) (not (not (= (ite (= (str.at value1 0) "\f") 1 0) 0)))) (not (not (= (ite (= (str.at value1 0) "\v") 1 0) 0)))) (not (not (= (ite (= (str.at value1 0) "\r") 1 0) 0)))) (not (not (= (ite (= (str.at value1 0) "\n") 1 0) 0)))) (not (not (= (ite (= (str.at value1 0) "\t") 1 0) 0)))) (not (not (= (ite (= (str.at value1 0) " ") 1 0) 0)))) (not (not (= (ite (= (str.len value1) 0) 1 0) 0)))) (not (not (= (ite (str.contains value1 ",") 1 0) 0)))) (not (not (= (ite (= (str.len value1) 0) 1 0) 0)))) (not (= (ite (= key1 "connection") 1 0) 0))))

(check-sat)

;(get-value (value1))
;(get-value (key1))
;(get-value (key2))