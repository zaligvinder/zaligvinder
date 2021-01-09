
(declare-fun str () String)

(assert (and (and (and (and (and (and (and (and (and (and (not (not (= (ite (> (str.len str) 4) 1 0) 0))) (not (not (= (ite (= (str.at str 4) " ") 1 0) 0)))) (not (= (ite (> (str.len str) 4) 1 0) 0))) (not (= (ite (= (str.at str 3) " ") 1 0) 0))) (not (= (ite (> (str.len str) 3) 1 0) 0))) (not (= (ite (= (str.at str 2) " ") 1 0) 0))) (not (= (ite (> (str.len str) 2) 1 0) 0))) (not (= (ite (= (str.at str 1) " ") 1 0) 0))) (not (= (ite (> (str.len str) 1) 1 0) 0))) (not (= (ite (= (str.at str 0) " ") 1 0) 0))) (not (= (ite (> (str.len str) 0) 1 0) 0))))

(check-sat)

;(get-value (str))





