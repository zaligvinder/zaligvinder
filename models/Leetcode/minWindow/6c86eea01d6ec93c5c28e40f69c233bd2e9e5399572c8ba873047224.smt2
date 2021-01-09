
(declare-fun s () String)
(declare-fun t () String)

(assert (and (not (not (not (= (ite (<= (str.len s) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len t) 0) 1 0) 0)))))

(check-sat)

;(get-value (s))
;(get-value (t))





