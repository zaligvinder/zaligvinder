(declare-fun network () String)

(assert (and (not (not (= (ite (str.contains network "/") 1 0) 0))) (not (not (= (ite (= (str.len network) 0) 1 0) 0)))))

(check-sat)

;(get-value (network))