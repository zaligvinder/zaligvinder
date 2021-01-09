(declare-fun key2 () String)

(assert (not (not (= (ite (= key2 "cache-control") 1 0) 0))))

(check-sat)

;(get-value (key2))