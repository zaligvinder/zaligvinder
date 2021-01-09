(declare-fun url () String)

(assert (and (not (not (not (= (ite (= (str.len url) 0) 1 0) 0)))) (not (= (ite (str.contains url ":") 1 0) 0))))

(check-sat)

;(get-value (url))