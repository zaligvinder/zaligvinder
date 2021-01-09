
(declare-fun s () String)

(assert (not (not (not (= (ite (<= (str.len s) 1) 1 0) 0)))))

(check-sat)

;(get-value (s))





