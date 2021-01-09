(declare-fun scheme () String)

(assert (and (not (not (not (= (ite (not (= (str.len scheme) 0)) 1 0) 0)))) (not (not (= (ite (not (= (str.len scheme) 0)) 1 0) 0)))))

(check-sat)

;(get-value (scheme))