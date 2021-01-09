
(declare-fun s () String)
(declare-fun t () String)

(assert (and (and (and (and (and (and (and (and (not (not (= (ite (> (str.len s) 3) 1 0) 0))) (not (= (ite (= (str.at s 2) (str.at t 2)) 1 0) 0))) (not (= (ite (> (str.len s) 2) 1 0) 0))) (not (= (ite (= (str.at s 1) (str.at t 1)) 1 0) 0))) (not (= (ite (> (str.len s) 1) 1 0) 0))) (not (= (ite (= (str.at s 0) (str.at t 0)) 1 0) 0))) (not (= (ite (> (str.len s) 0) 1 0) 0))) (not (not (= (ite (> (- (str.len t) (str.len s)) 1) 1 0) 0)))) (not (not (= (ite (> (str.len s) (str.len t)) 1 0) 0)))))

(check-sat)

;(get-value (s))
;(get-value (t))





