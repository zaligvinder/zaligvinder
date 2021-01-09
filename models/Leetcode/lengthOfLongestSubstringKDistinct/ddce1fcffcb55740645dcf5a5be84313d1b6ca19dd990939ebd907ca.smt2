
(declare-fun k () Int)
(declare-fun s () String)

(assert (and (not (not (= (ite (< k 1) 1 0) 0))) (not (not (= (ite (<= (str.len s) 0) 1 0) 0)))))

(check-sat)

;(get-value (k))
;(get-value (s))





