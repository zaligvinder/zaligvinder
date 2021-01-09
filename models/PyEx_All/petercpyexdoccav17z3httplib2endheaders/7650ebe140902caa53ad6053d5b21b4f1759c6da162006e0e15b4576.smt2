(declare-fun value1 () String)
(declare-fun key1 () String)

(assert (and (not (not (not (= (ite (= (str.len value1) 0) 1 0) 0)))) (not (= (ite (= key1 "connection") 1 0) 0))))

(check-sat)

;(get-value (value1))
;(get-value (key1))