
(declare-fun digits () String)

(assert (not (not (not (= (ite (= (str.len digits) 0) 1 0) 0)))))

(check-sat)

;(get-value (digits))





