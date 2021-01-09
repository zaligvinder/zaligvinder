
(declare-fun s () String)

(assert (and (and (not (not (not (= (ite (str.contains s " ") 1 0) 0)))) (not (not (= (ite (= (str.len s) 0) 1 0) 0)))) (not (not (= (ite (= (str.len s) 0) 1 0) 0)))))

(check-sat)

;(get-value (s))





