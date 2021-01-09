
(declare-fun str () String)

(assert (and (not (not (not (= (ite (= (str.at str 0) " ") 1 0) 0)))) (not (= (ite (> (str.len str) 0) 1 0) 0))))

(check-sat)

;(get-value (str))





