(declare-fun url () String)

(assert (and (and (and (and (and (and (not (not (not (= (ite (= (str.substr url 0 (- 2 0)) "//") 1 0) 0)))) (not (not (= (ite (= (str.substr url 0 (- (str.indexof url ":" 0) 0)) "http") 1 0) 0)))) (not (= (ite (> (str.indexof url ":" 0) 0) 1 0) 0))) (>= 0 0)) (>= (- 2 0) 0)) (>= 0 0)) (>= (- (str.indexof url ":" 0) 0) 0)))

(check-sat)

;(get-value (url))