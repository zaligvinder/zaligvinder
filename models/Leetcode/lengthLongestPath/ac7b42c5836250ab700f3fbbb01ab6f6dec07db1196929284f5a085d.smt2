
(declare-fun input () String)

(assert (not (not (not (= (ite (= (str.len input) 0) 1 0) 0)))))

(check-sat)

;(get-value (input))





