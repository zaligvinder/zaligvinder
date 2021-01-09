
(declare-fun str () String)

(assert (not (not (not (= (ite (= (str.len str) 0) 1 0) 0)))))

(check-sat)

;(get-value (str))





