
(declare-fun guess () String)
(declare-fun secret () String)

(assert (and (and (and (and (and (and (and (not (not (= (ite (= (str.at guess 6) (str.at secret 6)) 1 0) 0))) (not (= (ite (= (str.at guess 5) (str.at secret 5)) 1 0) 0))) (not (= (ite (= (str.at guess 4) (str.at secret 4)) 1 0) 0))) (not (= (ite (= (str.at guess 3) (str.at secret 3)) 1 0) 0))) (not (= (ite (= (str.at guess 2) (str.at secret 2)) 1 0) 0))) (not (= (ite (= (str.at guess 1) (str.at secret 1)) 1 0) 0))) (not (= (ite (= (str.at guess 0) (str.at secret 0)) 1 0) 0))) (not (not (= (ite (<= (str.len secret) 0) 1 0) 0)))))

(check-sat)

;(get-value (guess))
;(get-value (secret))





