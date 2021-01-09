
(declare-fun J () String)

(assert (not (not (not (= (ite (= (str.len J) 0) 1 0) 0)))))

(check-sat)

;(get-value (J))





