(declare-fun value2 () String)
(declare-fun key2 () String)

(assert (and (and (not (not (not (= (ite (= (str.len value2) 0) 1 0) 0)))) (not (= (ite (= key2 "cache-control") 1 0) 0))) (not (= (ite (= key2 "cache-control") 1 0) 0))))

(check-sat)

;(get-value (value2))
;(get-value (key2))