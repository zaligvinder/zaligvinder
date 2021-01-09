(declare-fun value () String)
(declare-fun key () String)

(assert (and (and (not (not (not (= (ite (= (str.len value) 0) 1 0) 0)))) (not (= (ite (= key "cache-control") 1 0) 0))) (not (= (ite (= key "cache-control") 1 0) 0))))

(check-sat)

;(get-value (value))
;(get-value (key))