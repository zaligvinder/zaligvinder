
(declare-fun t () String)
(declare-fun s () String)

(assert (and (and (and (not (not (not (= (ite (= (str.len t) 2) 1 0) 0)))) (not (not (= (ite (= (str.len t) 1) 1 0) 0)))) (not (not (= (ite (<= (str.len s) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len t) 0) 1 0) 0)))))

(check-sat)

;(get-value (t))
;(get-value (s))





