;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun key1 () String)
(declare-fun value1 () String)

(assert (and (and (and (and (and (and (and (and (and (and (and (and (not (not (not (= (ite (= (str.at value1 (- (str.len value1) 1)) "\n") 1 0) 0)))) (not (not (= (ite (= (str.at value1 (- (str.len value1) 1)) "\t") 1 0) 0)))) (not (not (= (ite (= (str.at value1 (- (str.len value1) 1)) " ") 1 0) 0)))) (not (not (= (ite (= (str.at value1 0) "\f") 1 0) 0)))) (not (not (= (ite (= (str.at value1 0) "\v") 1 0) 0)))) (not (not (= (ite (= (str.at value1 0) "\r") 1 0) 0)))) (not (not (= (ite (= (str.at value1 0) "\n") 1 0) 0)))) (not (not (= (ite (= (str.at value1 0) "\t") 1 0) 0)))) (not (not (= (ite (= (str.at value1 0) " ") 1 0) 0)))) (not (not (= (ite (= (str.len value1) 0) 1 0) 0)))) (not (not (= (ite (str.contains value1 ",") 1 0) 0)))) (not (not (= (ite (= (str.len value1) 0) 1 0) 0)))) (not (= (ite (= key1 "connection") 1 0) 0))))

(check-sat)

;(get-value (key1))
;(get-value (value1))