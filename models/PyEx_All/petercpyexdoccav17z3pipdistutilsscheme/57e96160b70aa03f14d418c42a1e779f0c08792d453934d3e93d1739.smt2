(declare-fun scheme () String)

(assert (and (and (not (not (not (= (ite (str.prefixof "/" scheme) 1 0) 0)))) (not (not (= (ite (not (= (str.len scheme) 0)) 1 0) 0)))) (not (not (= (ite (not (= (str.len scheme) 0)) 1 0) 0)))))

(check-sat)

;(get-value (scheme))