(declare-fun key2 () String)
(declare-fun key1 () String)
(declare-fun value2 () String)

(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not (not (= (ite (= key2 "connection") 1 0) 0))) (not (= (ite (= key1 "proxy-authorization") 1 0) 0))) (not (not (= (ite (= key1 "proxy-authenticate") 1 0) 0)))) (not (not (= (ite (= key1 "keep-alive") 1 0) 0)))) (not (not (= (ite (= key1 "connection") 1 0) 0)))) (not (not (= (ite (= (str.at value2 (- (str.len value2) 1)) "\f") 1 0) 0)))) (not (not (= (ite (= (str.at value2 (- (str.len value2) 1)) "\v") 1 0) 0)))) (not (not (= (ite (= (str.at value2 (- (str.len value2) 1)) "\r") 1 0) 0)))) (not (not (= (ite (= (str.at value2 (- (str.len value2) 1)) "\n") 1 0) 0)))) (not (not (= (ite (= (str.at value2 (- (str.len value2) 1)) "\t") 1 0) 0)))) (not (not (= (ite (= (str.at value2 (- (str.len value2) 1)) " ") 1 0) 0)))) (not (not (= (ite (= (str.at value2 0) "\f") 1 0) 0)))) (not (not (= (ite (= (str.at value2 0) "\v") 1 0) 0)))) (not (not (= (ite (= (str.at value2 0) "\r") 1 0) 0)))) (not (not (= (ite (= (str.at value2 0) "\n") 1 0) 0)))) (not (not (= (ite (= (str.at value2 0) "\t") 1 0) 0)))) (not (not (= (ite (= (str.at value2 0) " ") 1 0) 0)))) (not (not (= (ite (= (str.len value2) 0) 1 0) 0)))) (not (not (= (ite (str.contains value2 ",") 1 0) 0)))) (not (not (= (ite (= (str.len value2) 0) 1 0) 0)))) (not (= (ite (= key2 "connection") 1 0) 0))))

(check-sat)

;(get-value (key2))
;(get-value (key1))
;(get-value (value2))