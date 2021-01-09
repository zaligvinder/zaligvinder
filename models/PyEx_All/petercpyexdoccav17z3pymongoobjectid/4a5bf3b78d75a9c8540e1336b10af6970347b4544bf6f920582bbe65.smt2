(declare-fun id () String)

(assert (not (not (= (ite (= (str.len id) 24) 1 0) 0))))

(check-sat)

;(get-value (id))