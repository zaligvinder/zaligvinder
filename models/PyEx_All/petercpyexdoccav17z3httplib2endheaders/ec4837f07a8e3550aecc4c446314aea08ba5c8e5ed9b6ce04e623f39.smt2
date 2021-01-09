(declare-fun value1 () String)
(declare-fun key1 () String)

(assert (and (and (and (and (and (and (and (not (not (not (= (ite (= (str.at value1 0) "\r") 1 0) 0)))) (not (not (= (ite (= (str.at value1 0) "\n") 1 0) 0)))) (not (not (= (ite (= (str.at value1 0) "\t") 1 0) 0)))) (not (not (= (ite (= (str.at value1 0) " ") 1 0) 0)))) (not (not (= (ite (= (str.len value1) 0) 1 0) 0)))) (not (not (= (ite (str.contains value1 ",") 1 0) 0)))) (not (not (= (ite (= (str.len value1) 0) 1 0) 0)))) (not (= (ite (= key1 "connection") 1 0) 0))))

(check-sat)

;(get-value (value1))
;(get-value (key1))