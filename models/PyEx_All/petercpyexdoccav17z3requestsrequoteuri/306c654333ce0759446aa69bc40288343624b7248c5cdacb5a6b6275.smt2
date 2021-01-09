(declare-fun uri () String)

(assert (and (not (not (= (ite (str.contains uri "%") 1 0) 0))) (not (not (= (ite (= (str.len uri) 0) 1 0) 0)))))

(check-sat)

;(get-value (uri))