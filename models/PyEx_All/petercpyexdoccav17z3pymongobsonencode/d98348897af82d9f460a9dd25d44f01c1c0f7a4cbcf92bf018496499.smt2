(declare-fun k () String)

(assert (and (not (not (not (= (ite (str.contains k "\x00") 1 0) 0)))) (not (= (ite (not (= k "_id")) 1 0) 0))))

(check-sat)

;(get-value (k))