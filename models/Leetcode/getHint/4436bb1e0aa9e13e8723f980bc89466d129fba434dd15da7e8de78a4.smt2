
(declare-fun secret () String)

(assert (not (not (not (= (ite (<= (str.len secret) 0) 1 0) 0)))))

(check-sat)

;(get-value (secret))





