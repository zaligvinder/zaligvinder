
(declare-fun s2 () String)
(declare-fun s1 () String)

(assert (and (and (not (not (not (= (ite (<= (str.len s2) 1) 1 0) 0)))) (not (= (ite (<= (str.len s1) (str.len s2)) 1 0) 0))) (not (not (= (ite (not (= (str.len s1) (str.len s2))) 1 0) 0)))))

(check-sat)

;(get-value (s2))
;(get-value (s1))





