
(declare-fun input () String)

(assert (and (and (not (not (not (= (ite (str.contains input "\n") 1 0) 0)))) (not (not (= (ite (= (str.len input) 0) 1 0) 0)))) (not (not (= (ite (= (str.len input) 0) 1 0) 0)))))

(check-sat)

;(get-value (input))





