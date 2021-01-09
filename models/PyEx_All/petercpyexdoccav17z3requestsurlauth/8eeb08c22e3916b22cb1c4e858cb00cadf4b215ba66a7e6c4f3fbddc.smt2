(declare-fun url () String)

(assert (and (and (and (and (and (and (and (and (and (and (and (and (not (not (= (ite (= (str.substr url 0 (- (str.indexof url ":" 0) 0)) "http") 1 0) 0))) (not (not (= (ite (= (str.substr url 0 (- (str.indexof url ":" 0) 0)) "prospero") 1 0) 0)))) (not (not (= (ite (= (str.substr url 0 (- (str.indexof url ":" 0) 0)) "hdl") 1 0) 0)))) (not (not (= (ite (= (str.substr url 0 (- (str.indexof url ":" 0) 0)) "ftp") 1 0) 0)))) (not (= (ite (= url url) 1 0) 0))) (>= 0 0)) (>= (- (str.indexof url ":" 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof url ":" 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof url ":" 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof url ":" 0) 0) 0)))

(check-sat)

;(get-value (url))