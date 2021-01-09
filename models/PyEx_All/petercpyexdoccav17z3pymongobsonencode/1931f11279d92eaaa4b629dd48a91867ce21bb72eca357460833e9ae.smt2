(declare-fun k () String)

(assert (and (and (not (not (not (= (ite (not (= k "_id")) 1 0) 0)))) (not (= (ite (= k "_id") 1 0) 0))) (not (= (ite (not (= k "_id")) 1 0) 0))))

(check-sat)

;(get-value (k))