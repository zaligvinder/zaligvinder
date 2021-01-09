
(declare-fun t () String)

(assert (not (not (not (= (ite (<= (str.len t) 0) 1 0) 0)))))

(check-sat)

;(get-value (t))





